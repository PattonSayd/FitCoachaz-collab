import 'package:formz/formz.dart';

class PhoneFormz extends FormzInput<String, String> {
  const PhoneFormz.pure([super.value = '']) : super.pure();
  const PhoneFormz.dirty([super.value = '']) : super.dirty();

  static final _phoneNumRegex =
      RegExp(r"\(50\)|\(51\)|\(55\)|\(77\)|\(70\)|\(10\)\(99\)");

  @override
  String? validator(String? value) {
    if (value == null) return null;

    if (value.length < 14) {
      return 'unfinished';
    } else if (!_phoneNumRegex.hasMatch(value)) {
      return 'invalid operator code';
    }

    return null;
  }
}
