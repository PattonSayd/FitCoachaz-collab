// import 'package:equatable/equatable.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:fitcoachaz/domain/repositories/register/register_repository.dart';
// import 'package:fitcoachaz/logger.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:meta/meta.dart';

// part 'register_event.dart';
// part 'register_state.dart';

// class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
//   // String registerResult = '';
//   late final int? _resendToken;
//   late final String _verificationId;
//   final registerRepository = RegisterRepository();

//   RegisterBloc() : super(const RegisterStateInitial()) {
//     on<RegisterEvent>(_onRegisterEvent);
//   }

//   _onRegisterEvent(RegisterEvent event, Emitter<RegisterState> emit) async {
//     if (event is SendOTPToPhoneEvent) {
//       await _onSentOtpToPhone(event, emit);
//     } else if (event is OnPhoneOTPSentEvent) {
//       emit(RegisterStateOTPSentSuccess(verificationId: event.verificationId));
//     } else if (event is VerifySentOTPEvent) {
//       _onVerifyOtp(event, emit);
//     } else if (event is OnPhoneAuthErrorEvent) {
//       if (event.error == 'too-many-requests') {
//         emit(const RegisterStateError(error: 'Too many requests'));
//       } else {
//         emit(RegisterStateError(error: event.error));
//       }
//     } else if (event is OnPhoneAuthVerificationCompleteEvent) {
//       await _onVerificationComplete(event, emit);
//     }
//   }

//   Future<void> _onSentOtpToPhone(
//     SendOTPToPhoneEvent event,
//     Emitter<RegisterState> emit,
//   ) async {
//     emit(const RegisterStateLoading());

//     // await Future.delayed(Duration(seconds: 120));

//     try {
//       await registerRepository.loginWithPhoneNumber(
//         phoneNumber: event.number,
//         verificationCompleted: (PhoneAuthCredential credential) {
//           add(OnPhoneAuthVerificationCompleteEvent(credential: credential));
//         },
//         verificationFailed: (FirebaseAuthException e) {
//           logger.e(e.code);
//           add(OnPhoneAuthErrorEvent(error: e.code));
//         },
//         codeSent: (String verificationId, int? resendToken) {
//           _verificationId = verificationId;
//           _resendToken = resendToken;
//           add(OnPhoneOTPSentEvent(
//               verificationId: _verificationId, token: _resendToken));
//         },
//         codeAutoRetrievalTimeout: (String verificationId) {},
//       );
//     } catch (e) {
//       logger.e('Phone number verification error');
//       emit(RegisterStateError(error: e.toString()));
//     }
//   }

//   void _onVerifyOtp(
//     VerifySentOTPEvent event,
//     Emitter<RegisterState> emit,
//   ) {
//     emit(const RegisterStateLoading());
//     try {
//       final credential = PhoneAuthProvider.credential(
//           verificationId: event.verificationId, smsCode: event.otpCode);

//       add(OnPhoneAuthVerificationCompleteEvent(credential: credential));
//     } catch (e) {
//       logger.e('verification');

//       emit(RegisterStateError(error: e.toString()));
//     }
//   }

//   Future<void> _onVerificationComplete(
//     OnPhoneAuthVerificationCompleteEvent event,
//     Emitter<RegisterState> emit,
//   ) async {
//     try {
//       await registerRepository.auth
//           .signInWithCredential(event.credential)
//           .then((credential) {
//         if (credential.user != null) {
//           emit(const RegisterStateLoaded());
//         }
//       });
//     } on FirebaseAuthException catch (e) {
//       logger.e(e.code);
//       final raw = e.code.replaceAll('-', ' ');
//       final error = raw.replaceFirst(raw[0], raw[0].toUpperCase());
//       emit(RegisterStateError(error: error));
//     } catch (e) {
//       logger.e(e.toString());

//       emit(RegisterStateError(error: e.toString()));
//     }
//   }
// }

import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitcoachaz/domain/repositories/register/register_repository.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  // String registerResult = '';
  int? _resendToken;
  String _verificationId = '';
  final registerRepository = RegisterRepository();

  RegisterBloc() : super(const RegisterStateInitial()) {
    on<SendOTPToPhoneEvent>(_onSentOtpToPhone);
    on<OnPhoneAuthVerificationCompleteEvent>(_onVerificationComplete);
    on<OnPhoneAuthErrorEvent>(_onError);
    on<OnPhoneOTPSentEvent>(_onOTPSentSuccess);
    on<VerifySentOTPEvent>(_onVerifyOtp);
  }

  Future<void> _onSentOtpToPhone(
    SendOTPToPhoneEvent event,
    Emitter<RegisterState> emit,
  ) async {
    emit(const RegisterStateLoading());
    // await Future.delayed(Duration(seconds: 120));
    try {
      await registerRepository.verifyPhoneNumber(
        phoneNumber: event.number,
        verificationCompleted: (PhoneAuthCredential credential) {
          add(OnPhoneAuthVerificationCompleteEvent(credential: credential));
        },
        verificationFailed: (FirebaseAuthException e) {
          logger.e(e.code);
          add(OnPhoneAuthErrorEvent(error: e.code));
        },
        codeSent: (String verificationId, int? resendToken) async {
          _verificationId = verificationId;
          _resendToken = resendToken;
          add(OnPhoneOTPSentEvent(
              verificationId: _verificationId, token: _resendToken));
        },
        forceResendingToken: _resendToken,
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (e) {
      logger.e('Phone number verification error');
      emit(RegisterStateError(error: e.toString()));
    }
  }

  void _onVerifyOtp(
    VerifySentOTPEvent event,
    Emitter<RegisterState> emit,
  ) {
    emit(const RegisterStateLoading());
    try {
      final credential = PhoneAuthProvider.credential(
          verificationId: event.verificationId, smsCode: event.otpCode);

      add(OnPhoneAuthVerificationCompleteEvent(credential: credential));
    } catch (e) {
      logger.e('verification');

      emit(RegisterStateError(error: e.toString()));
    }
  }

  Future<void> _onVerificationComplete(
    OnPhoneAuthVerificationCompleteEvent event,
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

  FutureOr<void> _onOTPSentSuccess(
      OnPhoneOTPSentEvent event, Emitter<RegisterState> emit) {
    emit(RegisterStateOTPSentSuccess(verificationId: event.verificationId));
  }

  FutureOr<void> _onError(
      OnPhoneAuthErrorEvent event, Emitter<RegisterState> emit) {
    if (event.error == 'too-many-requests') {
      emit(const RegisterStateError(error: 'Too many requests'));
    } else {
      emit(RegisterStateError(error: event.error));
    }
  }
}
