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
    @Default(FormzSubmissionStatus.canceled)
        FormzSubmissionStatus? submissionStatus,
    @Default(RegisterStatus.initial) RegisterStatus registerStatus,
    @Default('+994') String prefix,
    String? phoneNumber,
    String? verificationId,
    String? error,
  }) = _RegisterState;
}
