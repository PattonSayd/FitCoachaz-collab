part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent extends Equatable {
  const RegisterEvent();
}

class SendOTPToPhoneEvent extends RegisterEvent {
  const SendOTPToPhoneEvent({this.number});

  final String? number;

  @override
  List<Object?> get props => [number];
}

class VerifySentOTPEvent extends RegisterEvent {
  const VerifySentOTPEvent({
    required this.otpCode,
    required this.verificationId,
  });

  final String otpCode;
  final String verificationId;

  @override
  List<Object?> get props => [otpCode, verificationId];
}

class OnPhoneOTPSentEvent extends RegisterEvent {
  const OnPhoneOTPSentEvent({
    required this.verificationId,
    this.token,
  });

  final String verificationId;
  final int? token;

  @override
  List<Object?> get props => [verificationId, token];
}

class OnPhoneAuthErrorEvent extends RegisterEvent {
  const OnPhoneAuthErrorEvent({
    required this.error,
  });

  final String error;

  @override
  List<Object?> get props => [error];
}

class OnPhoneAuthVerificationCompleteEvent extends RegisterEvent {
  const OnPhoneAuthVerificationCompleteEvent({
    required this.credential,
  });

  final AuthCredential credential;

  @override
  List<Object?> get props => [credential];
}
