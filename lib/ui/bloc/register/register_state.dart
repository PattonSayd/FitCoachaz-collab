part of 'register_bloc.dart';

enum RegisterStatus {
  initial,
  otpSentSuccess,
  loaded,
  error,
}

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(PhoneFormz.pure()) PhoneFormz phoneField,
    @Default(OtpFormz.pure()) OtpFormz otpField,
    @Default(FormzSubmissionStatus.canceled)
        FormzSubmissionStatus? submissionStatus,
    @Default(RegisterStatus.initial) RegisterStatus registerStatus,
    @Default('+994') String prefix,
    String? phoneNumber,
    @Default(false) bool isVerified,
    String? verificationId,
    String? error,
  }) = _RegisterState;
}

@freezed
abstract class ResendCodeResult with _$ResendCodeResult {
  const factory ResendCodeResult({
    required bool shouldResend,
    required int timeRequired,
  }) = _ResendCodeResult;

  static ResendCodeResult get defaulting =>
      const ResendCodeResult(shouldResend: true, timeRequired: 0);
}
