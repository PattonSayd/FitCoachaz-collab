import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitcoachaz/domain/repositories/register/register_repository.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  String registerResult = '';
  late final String _verificationId;
  late final int? _resendToken;
  final registerRepository = RegisterRepository();

  RegisterBloc() : super(const RegisterStateInitial()) {
    on<RegisterEvent>(_onRegisterEvent);
  }

  _onRegisterEvent(RegisterEvent event, Emitter<RegisterState> emit) async {
    if (event is SendOTPToPhoneRegisterEvent) {
      await _onSentOtpToPhone(event, emit);
    } else if (event is OnPhoneOTPSentRegisterEvent) {
      emit(RegisterStateOTPSentSuccess(verificationId: event.verificationId));
    } else if (event is VerifySentOTPRegisterEvent) {
      _onVerifyOtp(event, emit);
    } else if (event is OnPhoneAuthErrorRegisterEvent) {
      if (event.error == 'too-many-requests') {
        emit(const RegisterStateError(error: 'Too many requests'));
      } else {
        emit(RegisterStateError(error: event.error));
      }
    } else if (event is OnPhoneAuthVerificationCompleteRegisterEvent) {
      await _onVerificationComplete(event, emit);
    }
  }

  Future<void> _onSentOtpToPhone(
    SendOTPToPhoneRegisterEvent event,
    Emitter<RegisterState> emit,
  ) async {
    emit(const RegisterStateLoading());

    try {
      await registerRepository.loginWithPhoneNumber(
        phoneNumber: '+994${event.number}',
        verificationCompleted: (PhoneAuthCredential credential) {
          add(OnPhoneAuthVerificationCompleteRegisterEvent(
              credential: credential));
        },
        verificationFailed: (FirebaseAuthException e) {
          logger.e(e.code);
          add(OnPhoneAuthErrorRegisterEvent(error: e.code));
        },
        codeSent: (String verificationId, int? resendToken) {
          _verificationId = verificationId;
          _resendToken = resendToken;
          add(OnPhoneOTPSentRegisterEvent(
              verificationId: _verificationId, token: _resendToken));
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (e) {
      logger.e('Phone number verification error');
      emit(RegisterStateError(error: e.toString()));
    }
  }

  void _onVerifyOtp(
    VerifySentOTPRegisterEvent event,
    Emitter<RegisterState> emit,
  ) {
    emit(const RegisterStateLoading());
    try {
      final credential = PhoneAuthProvider.credential(
          verificationId: event.verificationId, smsCode: event.otpCode);

      add(OnPhoneAuthVerificationCompleteRegisterEvent(credential: credential));
    } catch (e) {
      logger.e('verification');

      emit(RegisterStateError(error: e.toString()));
    }
  }

  Future<void> _onVerificationComplete(
    OnPhoneAuthVerificationCompleteRegisterEvent event,
    Emitter<RegisterState> emit,
  ) async {
    try {
      await registerRepository.auth
          .signInWithCredential(event.credential)
          .then((credential) {
        if (credential.user != null) {
          emit(const RegisterStateLoaded());
        }
      });
    } on FirebaseAuthException catch (e) {
      logger.e(e.code);
      final raw = e.code.replaceAll('-', ' ');
      final error = raw.replaceFirst(raw[0], raw[0].toUpperCase());
      emit(RegisterStateError(error: error));
    } catch (e) {
      logger.e(e.toString());

      emit(RegisterStateError(error: e.toString()));
    }
  }
}
