part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.sendOTPToPhone({required String number}) =
      _SendOTPToPhoneEvent;

  const factory RegisterEvent.verifySentOTP({required String otpCode}) =
      _VerifySentOTPEvent;

  const factory RegisterEvent.onPhoneOTPSent(
      {required String verificationId, int? token}) = _OnPhoneOTPSentEvent;

  const factory RegisterEvent.onPhoneAuthError({required String error}) =
      _OnPhoneAuthErrorEvent;

  const factory RegisterEvent.onPhoneAuthVerificationComplete(
          {required AuthCredential credential}) =
      _OnPhoneAuthVerificationCompleteEvent;
}
