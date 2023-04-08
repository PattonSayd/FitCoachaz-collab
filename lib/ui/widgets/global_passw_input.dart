import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/text_style.dart';
import '../theme/app_colors.dart';


class GlobalPasswordInput extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focus;
  final void Function(String) onChanged;
  final String? Function(String?) validator;
  final String? errorText;
  final String? hintText;
  final String? labelText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;


   const GlobalPasswordInput({
    Key? key,
    required this.controller,
    required this.focus,
    required this.onChanged,
    this.keyboardType,
    required this.validator,
    this.hintText, 
    this.suffixIcon,
    this.labelText, 
    this.obscureText=false,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:obscureText,
      onChanged: onChanged,
      keyboardType:keyboardType,
      validator: validator,
      controller: controller,
      focusNode: focus,
      autofocus: true,
      cursorColor: AppColors.darkGrey,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
         hintText: hintText,
         labelText: labelText,
         labelStyle:AppTextStyle.labelText,
        errorStyle:  TextStyle(
          fontSize: 14.sp,
          color: AppColors.pink,
        ),
      ),
    );
  }
}