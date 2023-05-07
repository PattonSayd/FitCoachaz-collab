import 'package:formz/formz.dart';

class SurnameFormz extends FormzInput<String, String> {
  const SurnameFormz.pure([super.value = '']) : super.pure();
  const SurnameFormz.dirty([super.value = '']) : super.dirty();

  static final RegExp _regExp =
      RegExp(r"^[\p{L}]*$", caseSensitive: false, unicode: true, dotAll: true);

  @override
  String? validator(String value) {
    if (value.length < 3) {
      return 'Entered too short';
    }

    if (!_regExp.hasMatch(value)) {
      return 'Enter a valid name';
    }

    return null;
  }
}
