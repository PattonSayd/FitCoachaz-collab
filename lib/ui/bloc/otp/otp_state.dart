part of 'otp_bloc.dart';

class OtpState extends Equatable {
  const OtpState({
    required this.otpCode,
    required this.isValid,
  });

  final String otpCode;
  final bool isValid;

  static const initial = OtpState(otpCode: '', isValid: false);

  @override
  List<Object> get props => [otpCode, isValid];
}
