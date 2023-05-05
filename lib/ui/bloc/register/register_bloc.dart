import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitcoachaz/app/config.dart';
import 'package:fitcoachaz/domain/repositories/register_repository.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:fitcoachaz/ui/bloc/register/resend_code_result.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'register_bloc.freezed.dart';
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
        super(const RegisterState.initial()) {
    on<RegisterEvent>((event, emit) => event.map(
          sendOTPToPhone: (event) => _onSentOtpToPhone(event, emit),
          onPhoneAuthVerificationComplete: (event) =>
              _onVerificationComplete(event, emit),
          onPhoneAuthError: (event) => _onError(event, emit),
          verifySentOTP: (event) => _onVerifyOtp(event, emit),
          onPhoneOTPSent: (event) => _onOTPSentSuccess(event, emit),
        ));
  }

  final RegisterRepository _repository;

  Future<void> _onSentOtpToPhone(
    _SendOTPToPhoneEvent event,
    Emitter<RegisterState> emit,
  ) async {
    _phoneNumber = _normalizePhoneNumber(event.number);
    final ResendCodeResult result =
        await _shouldResendCode(_phoneNumber, resendTime);

    if (result.shouldResend) {
      emit(const RegisterState.loading());
      try {
        await _repository.verifyNumber(
          phoneNumber: _phoneNumber,
          verificationCompleted: _handleVerificationCompleted,
          verificationFailed: _handleVerificationFailed,
          codeSent: _handleCodeSent,
          codeAutoRetrievalTimeout: _handleCodeAutoRetrievalTimeout,
          timeout: const Duration(seconds: 30),
          forceResendingToken: _resendToken,
        );
      } catch (e) {
        logger.d(e.toString());
        emit(RegisterState.error(error: e.toString()));
      }
    } else {
      emit(
        RegisterState.error(
            error:
                'You already requested verify code. Wait ${result.timeRequired.toString()} seconds to request again.'),
      );
    }
  }

  void _handleVerificationCompleted(PhoneAuthCredential credential) => add(
      RegisterEvent.onPhoneAuthVerificationComplete(credential: credential));

  void _handleVerificationFailed(FirebaseAuthException e) {
    logger.d(e.message, e.code, e.stackTrace);
    add(RegisterEvent.onPhoneAuthError(error: e.code));
  }

  void _handleCodeSent(String verificationId, int? resendToken) {
    _verificationId = verificationId;
    _resendToken = resendToken;
    logger.wtf('verificationId: $verificationId, resendToken: $resendToken');
    add(RegisterEvent.onPhoneOTPSent(
        verificationId: _verificationId, token: _resendToken));
  }

  void _handleCodeAutoRetrievalTimeout(String verificationId) {
    logger.w(verificationId);
  }

  void _onVerifyOtp(
    _VerifySentOTPEvent event,
    Emitter<RegisterState> emit,
  ) {
    emit(const RegisterState.loading());
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: _verificationId,
        smsCode: event.otpCode,
      );
      add(RegisterEvent.onPhoneAuthVerificationComplete(
          credential: credential));
    } catch (e) {
      logger.d(e.toString());
      emit(RegisterState.error(error: e.toString()));
    }
  }

  Future<void> _onVerificationComplete(
    _OnPhoneAuthVerificationCompleteEvent event,
    Emitter<RegisterState> emit,
  ) async {
    try {
      final uid = await _repository.verifyAndLogin(event.credential);
      await _repository.setUserIdPrefs(uid);
      if (uid == null) logger.e(uid);
      emit(const RegisterState.loaded());
    } on FirebaseAuthException catch (e) {
      logger.d(e.message, e.code, e.stackTrace);
      final raw = e.code.replaceAll('-', ' ');
      final error = raw.replaceFirst(raw[0], raw[0].toUpperCase());
      emit(RegisterState.error(error: error));
    } catch (e) {
      logger.e(e.toString());
      emit(RegisterState.error(error: e.toString()));
    }
  }

  Future<void> _onOTPSentSuccess(
    _OnPhoneOTPSentEvent event,
    Emitter<RegisterState> emit,
  ) async {
    await _setLimitedTimeToResend(_phoneNumber, resendTime);
    emit(const RegisterState.otpSentSuccess());
  }

  void _onError(
    _OnPhoneAuthErrorEvent event,
    Emitter<RegisterState> emit,
  ) {
    if (event.error == 'too-many-requests') {
      emit(const RegisterState.error(error: 'Too many requests'));
    } else {
      emit(RegisterState.error(error: event.error));
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
