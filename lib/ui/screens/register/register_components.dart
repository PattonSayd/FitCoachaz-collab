import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../app/config.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';

var maskFormatter = MaskTextInputFormatter(
  mask: '(##) ### ## ##',
  filter: {"#": RegExp(r'[0-9]')},
);

class PhoneInput extends StatelessWidget {
  final FocusNode focus;
  final void Function(String) onChanged;
  final void Function(String)? onSelected;
  final String seletedPrefix;
  final String? errorText;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;

  const PhoneInput({
    Key? key,
    required this.focus,
    required this.onChanged,
    required this.onSelected,
    required this.seletedPrefix,
    this.errorText,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [maskFormatter],
      obscureText: obscureText,
      onChanged: onChanged,
      keyboardType: keyboardType,
      focusNode: focus,
      cursorColor: AppColors.darkGrey,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        errorText: errorText,
        hintText: hintText,
        labelText: labelText,
        labelStyle: AppTextStyle.labelText,
        errorStyle: TextStyle(
          fontSize: 14.spMin,
          color: AppColors.pink,
        ),
        prefixIcon: Container(
          padding: const EdgeInsets.only(left: 10),
          child: PopupMenuButton(
            color: AppColors.lightBlue,
            offset: const Offset(-10, 0),
            onSelected: onSelected,
            child: SizedBox(
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    seletedPrefix,
                    style: const TextStyle(
                        fontSize: 16, color: AppColors.darkBlue),
                  ),
                  const Icon(Icons.keyboard_arrow_down_rounded)
                ],
              ),
            ),
            itemBuilder: (context) => phonePrefix
                .map((prefix) => PopupMenuItem(
                      height: 40,
                      value: prefix,
                      child: Align(child: Text(prefix)),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
