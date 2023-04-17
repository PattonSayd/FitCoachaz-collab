part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent extends Equatable {
  const RegisterEvent();
}

class SendOTPToPhoneRegisterEvent extends RegisterEvent {
  const SendOTPToPhoneRegisterEvent({required this.number});

  final String number;

  @override
  List<Object?> get props => [number];
}

class VerifySentOTPRegisterEvent extends RegisterEvent {
  const VerifySentOTPRegisterEvent({
    required this.otpCode,
    required this.verificationId,
  });

  final String otpCode;
  final String verificationId;

  @override
  List<Object?> get props => [otpCode, verificationId];
}

class OnPhoneOTPSentRegisterEvent extends RegisterEvent {
  const OnPhoneOTPSentRegisterEvent({
    required this.verificationId,
    this.token,
  });

  final String verificationId;
  final int? token;

  @override
  List<Object?> get props => [verificationId, token];
}

class OnPhoneAuthErrorRegisterEvent extends RegisterEvent {
  const OnPhoneAuthErrorRegisterEvent({
    required this.error,
  });

  final String error;

  @override
  List<Object?> get props => [error];
}

class OnPhoneAuthVerificationCompleteRegisterEvent extends RegisterEvent {
  const OnPhoneAuthVerificationCompleteRegisterEvent({
    required this.credential,
  });

  final AuthCredential credential;

  @override
  List<Object?> get props => [credential];
}
