import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitcoachaz/app/config.dart';
import 'package:fitcoachaz/domain/repositories/register_repository.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:fitcoachaz/ui/bloc/register/resend_code_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  String _phoneNumber = '';
  int? _resendToken;
  String _verificationId = '';

  String get phoneNumber => _phoneNumber;

  RegisterBloc({
    required RegisterRepository repository,
  })  : _repository = repository,
        super(const RegisterStateInitial()) {
    on<SendOTPToPhoneEvent>(_onSentOtpToPhone);
    on<OnPhoneAuthVerificationCompleteEvent>(_onVerificationComplete);
    on<OnPhoneAuthErrorEvent>(_onError);
    on<OnPhoneOTPSentEvent>(_onOTPSentSuccess);
    on<VerifySentOTPEvent>(_onVerifyOtp);
  }

  final RegisterRepository _repository;

  Future<void> _onSentOtpToPhone(
    SendOTPToPhoneEvent event,
    Emitter<RegisterState> emit,
  ) async {
    _phoneNumber = _normalizePhoneNumber(event.number);
    final ResendCodeResult result =
        await _shouldResendCode(_phoneNumber, resendTime);

    if (result.shouldResend) {
      emit(const RegisterStateLoading());
      try {
        await _repository.verifyNumber(
          phoneNumber: event.number,
          verificationCompleted: _handleVerificationCompleted,
          verificationFailed: _handleVerificationFailed,
          codeSent: _handleCodeSent,
          codeAutoRetrievalTimeout: _handleCodeAutoRetrievalTimeout,
        );
      } catch (e) {
        logger.d(e.toString());
        emit(RegisterStateError(error: e.toString()));
      }
    } else {
      emit(
        RegisterStateError(
            error:
                'You already requested verify code. Wait ${result.timeRequired.toString()} seconds to request again.'),
      );
    }
  }

  void _handleVerificationCompleted(PhoneAuthCredential credential) =>
      add(OnPhoneAuthVerificationCompleteEvent(credential: credential));

  void _handleVerificationFailed(FirebaseAuthException e) {
    logger.d(e.message, e.code, e.stackTrace);
    add(OnPhoneAuthErrorEvent(error: e.code));
  }

  void _handleCodeSent(String verificationId, int? resendToken) {
    _verificationId = verificationId;
    _resendToken = resendToken;
    logger.wtf('verificationId: $verificationId, resendToken: $resendToken');
    add(OnPhoneOTPSentEvent(
        verificationId: _verificationId, token: _resendToken));
  }

  void _handleCodeAutoRetrievalTimeout(String verificationId) {
    logger.w(verificationId);
  }

  void _onVerifyOtp(
    VerifySentOTPEvent event,
    Emitter<RegisterState> emit,
  ) {
    emit(const RegisterStateLoading());
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: event.verificationId,
        smsCode: event.otpCode,
      );
      add(OnPhoneAuthVerificationCompleteEvent(credential: credential));
    } catch (e) {
      logger.d(e.toString());
      emit(RegisterStateError(error: e.toString()));
    }
  }

  Future<void> _onVerificationComplete(
    OnPhoneAuthVerificationCompleteEvent event,
    Emitter<RegisterState> emit,
  ) async {
    try {
      final uid =
          await _repository.verifyAndLogin(event.credential, _phoneNumber);
      await _repository.setUserIdPrefs(uid);
      if (uid == null) logger.e(uid);
      emit(const RegisterStateLoaded());
    } on FirebaseAuthException catch (e) {
      logger.d(e.message, e.code, e.stackTrace);
      final raw = e.code.replaceAll('-', ' ');
      final error = raw.replaceFirst(raw[0], raw[0].toUpperCase());
      emit(RegisterStateError(error: error));
    } catch (e) {
      logger.e(e.toString());
      emit(RegisterStateError(error: e.toString()));
    }
  }

  Future<void> _onOTPSentSuccess(
    OnPhoneOTPSentEvent event,
    Emitter<RegisterState> emit,
  ) async {
    await _setLimitedTimeToResend(_phoneNumber, resendTime);
    emit(RegisterStateOTPSentSuccess(verificationId: event.verificationId));
  }

  void _onError(
    OnPhoneAuthErrorEvent event,
    Emitter<RegisterState> emit,
  ) {
    if (event.error == 'too-many-requests') {
      emit(const RegisterStateError(error: 'Too many requests'));
    } else {
      emit(RegisterStateError(error: event.error));
    }
  }

  String _normalizePhoneNumber(String phoneNumber) =>
      phoneNumber.replaceAll(RegExp(r'[() ]+'), '');

  Future<DateTime?> _checkLimitedTime(
    String phoneNumber,
    int resendTime,
  ) async {
    final futureTime = await _repository.getLimtedTimePrefs(phoneNumber);
    if (futureTime != null && futureTime.isNotEmpty) {
      return DateTime.parse(futureTime);
    }

    return null;
  }

  Future<ResendCodeResult> _shouldResendCode(
    String phoneNumber,
    int resendTime,
  ) async {
    final futureTime = await _checkLimitedTime(phoneNumber, resendTime);

    if (futureTime != null) {
      final now = DateTime.now();
      final Duration timeRequired = futureTime.difference(now);
      final number = await _repository.getPhoneNumberPrefs(_phoneNumber);
      final shouldResend = number == null || timeRequired.inSeconds <= 0;
      return ResendCodeResult(
        shouldResend: shouldResend,
        timeRequired: timeRequired.inSeconds,
      );
    }

    return ResendCodeResult.defaulting;
  }

  Future<void> _setLimitedTimeToResend(
    String phoneNumber,
    int resendTime,
  ) async {
    final now = DateTime.now();
    final addingFutureTime = now.add(Duration(seconds: resendTime));
    await _repository.setLimitedTimePrefs(phoneNumber, addingFutureTime);
  }
}
