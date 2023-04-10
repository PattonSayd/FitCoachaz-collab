import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/text_style.dart';
import '../../theme/app_colors.dart';

class PasswordInput extends StatefulWidget {
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
  
   const PasswordInput({
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
  State<PasswordInput> createState() => _PasswordInputState();
}


class _PasswordInputState extends State<PasswordInput> {
   bool _isActive = false;


  void listenFocus() {
    setState(() {
      if (widget.focus.hasFocus) {
        _isActive = true;
      } else {
        _isActive = false;
      }
    });
  }

    @override
  void initState() {
    super.initState();
    widget.focus.addListener(listenFocus);
  }

  @override
  void dispose() {
    super.dispose();
    widget.focus.removeListener(listenFocus);
  }





  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:widget.obscureText,
      onChanged: widget.onChanged,
      keyboardType:widget.keyboardType,
      validator: widget.validator,
      controller: widget.controller,
      focusNode: widget.focus,
      autofocus: true,
      cursorColor: AppColors.darkGrey,
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon,
         hintText: widget.hintText,
         labelText: widget.labelText,
         labelStyle:AppTextStyle.labelText,
        errorStyle:  TextStyle(
          fontSize: 14.sp,
          color: AppColors.pink,
        ),
      ),
    );
  }
}