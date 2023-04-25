part of 'otp_bloc.dart';

class OtpEvent extends Equatable {
  const OtpEvent({
    required this.otpCode,
  });

  final String otpCode;

  @override
  List<Object> get props => [otpCode];
}
