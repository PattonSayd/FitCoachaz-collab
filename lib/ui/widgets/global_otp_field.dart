import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class GlobalOtpField extends StatelessWidget {
  final TextEditingController otpFieldController;
  final FocusNode otpFieldFocus;
  final int otpFieldLength;
  final void Function(String) otpOnChanged;

  const GlobalOtpField({
    Key? key,
    required this.otpFieldController,
    required this.otpFieldFocus,
    required this.otpFieldLength,
    required this.otpOnChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      maxLength: otpFieldLength,
      controller: otpFieldController,
      focusNode: otpFieldFocus,
     
    );
  }
}
