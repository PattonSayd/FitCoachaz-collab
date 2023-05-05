part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.sendOTPToPhone({required String number}) =
      _SendOTPToPhoneEvent;

  const factory RegisterEvent.verifySentOTP(
      {required String otpCode,
      required String verificationId}) = _VerifySentOTPEvent;

  const factory RegisterEvent.onPhoneOTPSent(
      {required String verificationId,
      int? token,
      required String phoneNumber}) = _OnPhoneOTPSentEvent;

  const factory RegisterEvent.onPhoneAuthError({required String error}) =
      _OnPhoneAuthErrorEvent;

  const factory RegisterEvent.onPhoneAuthVerificationComplete(
          {required AuthCredential credential}) =
      _OnPhoneAuthVerificationCompleteEvent;

  const factory RegisterEvent.phoneChanged({required String phone}) =
      _PhoneChangedEvent;
  const factory RegisterEvent.phoneChangedPrefix({required String prefix}) =
      _PhoneChangedPrefixEvent;
  const factory RegisterEvent.phoneUnfocused() = _PhoneUnfocusedEvent;
  const factory RegisterEvent.phoneFormSubmitted() = _PhoneFormSubmittedEvent;
}
