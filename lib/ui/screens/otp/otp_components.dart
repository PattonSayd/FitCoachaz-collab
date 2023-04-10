import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

import '../../style/text_style.dart';
import '../../theme/app_colors.dart';

class OtpField extends StatelessWidget {
  final TextEditingController otpFieldController;
  final FocusNode otpFieldFocus;
  final int otpFieldLength;
  final void Function(String) otpOnChanged;

  const OtpField({
    Key? key,
    required this.otpFieldController,
    required this.otpFieldFocus,
    required this.otpFieldLength,
    required this.otpOnChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
        pinBoxWidth: 73.0.w,
        pinBoxHeight: 55.0.h,
        pinTextStyle: AppTextStyle.otpFieldText,
        maxLength: 4,
        controller: otpFieldController,
        hideCharacter: false,
        highlight: false,
        highlightAnimation: false,
        defaultBorderColor: AppColors.brightSilver,
        hasTextBorderColor: AppColors.lightGreen,
        highlightPinBoxColor: AppColors.lightBlue,
        hasError: false,
        errorBorderColor: AppColors.pink,
        onTextChanged: otpOnChanged,
        autofocus: true,
        focusNode: otpFieldFocus,
        wrapAlignment: WrapAlignment.start,
        pinBoxOuterPadding: const EdgeInsets.symmetric(horizontal: 6.0),
        pinBoxColor: AppColors.lightBlue,
        pinBoxBorderWidth: 2.0,
        pinBoxRadius: 8,
        hideDefaultKeyboard: false,
        hasUnderline: false);
  }
}
