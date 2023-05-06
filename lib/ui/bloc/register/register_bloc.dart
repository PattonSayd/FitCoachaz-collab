import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitcoachaz/app/config.dart';
import 'package:fitcoachaz/domain/repositories/register_repository.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../formz/otp/otp_formz.dart';
import '../../formz/phone_field/phone_formz.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc({
    required RegisterRepository repository,
  })  : _repository = repository,
        super(const RegisterState()) {
    on<RegisterEvent>((event, emit) => event.map(
          sendOTPToPhone: (event) => _onSentOtpToPhone(event, emit),
          onPhoneAuthVerificationComplete: (event) =>
              _onVerificationComplete(event, emit),
          onPhoneAuthError: (e) => _onError(e, emit),
          verifySentOTP: (e) => _onVerifyOtp(e, emit),
          onPhoneOTPSent: (e) => _onOTPSentSuccess(e, emit),
          phoneChangedPrefix: (e) => _onphoneChangedPrefix(e, emit),
          phoneChanged: (e) => _onPhoneChanged(e, emit),
          phoneUnfocused: (_) => _onPhoneUnfocused(emit),
          phoneFormSubmitted: (_) => _onPhoneFormSubmitted(emit),
          otpChanged: (e) => _onOtpChanged(e, emit),
        ));
  }

  final RegisterRepository _repository;

  Future<void> _onSentOtpToPhone(
    _SendOTPToPhoneEvent event,
    Emitter<RegisterState> emit,
  ) async {
    final phoneNumber = _normalizePhoneNumber(event.number);
    final ResendCodeResult result =
        await _shouldResendCode(phoneNumber, resendTime);

    if (result.shouldResend) {
      emit(
        state.copyWith(
          submissionStatus: FormzSubmissionStatus.inProgress,
          registerStatus: RegisterStatus.initial,
        ),
      );
      try {
        await _repository.verifyNumber(
          phoneNumber: phoneNumber,
          verificationCompleted: (PhoneAuthCredential credential) => add(
              RegisterEvent.onPhoneAuthVerificationComplete(
                  credential: credential)),
          verificationFailed: (FirebaseAuthException e) {
            logger.d(e.message, e.code, e.stackTrace);
            add(RegisterEvent.onPhoneAuthError(error: e.code));
          },
          codeSent: (String verificationId, int? resendToken) {
            logger.wtf(
                'verificationId: $verificationId, resendToken: $resendToken');
            add(RegisterEvent.onPhoneOTPSent(
                verificationId: verificationId,
                token: resendToken,
                phoneNumber: phoneNumber));
          },
          codeAutoRetrievalTimeout: (String verificationId) {
            logger.w(verificationId);
          },
          timeout: const Duration(seconds: 30),
          // forceResendingToken: _resendToken,
        );
      } catch (e) {
        logger.d(e.toString());
        emit(
          state.copyWith(
            registerStatus: RegisterStatus.error,
            error: e.toString(),
          ),
        );
      }
    } else {
      emit(
        state.copyWith(
          registerStatus: RegisterStatus.error,
          error:
              'You already requested verify code. Wait ${result.timeRequired.toString()} seconds to request again.',
        ),
      );
    }
  }

  void _onVerifyOtp(
    _VerifySentOTPEvent event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(submissionStatus: FormzSubmissionStatus.inProgress));
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: event.verificationId,
        smsCode: event.otpCode,
      );
      add(RegisterEvent.onPhoneAuthVerificationComplete(
          credential: credential));
    } catch (e) {
      logger.d(e.toString());
      emit(
        state.copyWith(
          registerStatus: RegisterStatus.error,
          error: e.toString(),
        ),
      );
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
      emit(state.copyWith(registerStatus: RegisterStatus.loaded));
    } on FirebaseAuthException catch (e) {
      logger.d(e.message, e.code, e.stackTrace);
      final raw = e.code.replaceAll('-', ' ');
      final error = raw.replaceFirst(raw[0], raw[0].toUpperCase());
      emit(state.copyWith(
        registerStatus: RegisterStatus.error,
        error: error,
        submissionStatus: FormzSubmissionStatus.canceled,
      ));
    } catch (e) {
      logger.e(e.toString());
      emit(
        state.copyWith(
          registerStatus: RegisterStatus.error,
          submissionStatus: FormzSubmissionStatus.initial,
          error: e.toString(),
        ),
      );
    }
  }

  Future<void> _onOTPSentSuccess(
    _OnPhoneOTPSentEvent event,
    Emitter<RegisterState> emit,
  ) async {
    await _setLimitedTimeToResend(event.phoneNumber, resendTime);
    emit(state.copyWith(
        registerStatus: RegisterStatus.otpSentSuccess,
        submissionStatus: FormzSubmissionStatus.canceled,
        phoneNumber: event.phoneNumber,
        verificationId: event.verificationId));
  }

  void _onError(
    _OnPhoneAuthErrorEvent event,
    Emitter<RegisterState> emit,
  ) {
    if (event.error == 'too-many-requests') {
      emit(
        state.copyWith(
          registerStatus: RegisterStatus.error,
          error: 'Too many requests',
        ),
      );
    } else {
      emit(
        state.copyWith(
          registerStatus: RegisterStatus.error,
          error: event.error,
        ),
      );
      ;
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
      final number = await _repository.getPhoneNumberPrefs(phoneNumber);
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

  void _onphoneChangedPrefix(
    _PhoneChangedPrefixEvent event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(prefix: event.prefix));
  }

  void _onPhoneChanged(
    _PhoneChangedEvent event,
    Emitter<RegisterState> emit,
  ) {
    final phone = PhoneFormz.dirty(event.phone);
    emit(
      state.copyWith(
        phoneField: phone.isValid ? phone : PhoneFormz.pure(event.phone),
        submissionStatus: Formz.validate([phone])
            ? FormzSubmissionStatus.initial
            : FormzSubmissionStatus.canceled,
      ),
    );
  }

  void _onPhoneUnfocused(Emitter<RegisterState> emit) {
    final phone = PhoneFormz.dirty(state.phoneField.value);
    emit(state.copyWith(
      phoneField: phone,
      submissionStatus: Formz.validate([phone])
          ? FormzSubmissionStatus.initial
          : FormzSubmissionStatus.canceled,
    ));
  }

  void _onPhoneFormSubmitted(Emitter<RegisterState> emit) {
    emit(state.copyWith(submissionStatus: FormzSubmissionStatus.inProgress));
  }

  void _onOtpChanged(
    _OtpChangedEvent event,
    Emitter<RegisterState> emit,
  ) {
    final otp = OtpFormz.dirty(event.otpCode);
    emit(
      state.copyWith(
        otpField: otp.isValid ? otp : OtpFormz.pure(event.otpCode),
        registerStatus: RegisterStatus.initial,
        submissionStatus: Formz.validate([otp])
            ? FormzSubmissionStatus.initial
            : FormzSubmissionStatus.canceled,
      ),
    );
  }
}
