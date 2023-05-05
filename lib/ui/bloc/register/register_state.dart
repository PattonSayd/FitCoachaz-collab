part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _RegistetrInitial;
  const factory RegisterState.loading() = _RegistetrLoading;
  const factory RegisterState.loaded() = _RegistetrLoaded;
  const factory RegisterState.error({required String error}) = _RegistetrError;
  const factory RegisterState.otpSentSuccess() = _RegistetrOtpSentSuccess;
}
