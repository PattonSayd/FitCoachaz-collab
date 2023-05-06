import 'package:fitcoachaz/app/config.dart';
import 'package:formz/formz.dart';

class OtpFormz extends FormzInput<String, String> {
  const OtpFormz.pure([super.value = '']) : super.pure();
  const OtpFormz.dirty([super.value = '']) : super.dirty();

  @override
  String? validator(String? value) {
    if (value == null) return null;
    if (value.length != otpLength) return 'Invalid length';
    // if (value.length < 14) {
    //   return 'unfinished';
    // } else if (!_phoneNumRegex.hasMatch(value)) {
    //   return 'invalid operator code';
    // }

    return null;
  }
}
