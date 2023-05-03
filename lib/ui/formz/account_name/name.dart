import 'package:formz/formz.dart';

class Name extends FormzInput<String, String> {
  const Name.pure([super.value = '']) : super.pure();
  const Name.dirty([super.value = '']) : super.dirty();

  static final RegExp _regExp =
      RegExp(r"^[\p{L}]*$", caseSensitive: false, unicode: true, dotAll: true);

  @override
  String? validator(String value) {
    if (value.length < 4) {
      return 'Entered too short';
    }

    if (!_regExp.hasMatch(value)) {
      return 'Enter a valid name';
    }

    return null;
  }
}
