import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_colors.dart';

class GlobalStartButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final TextStyle style;
  const GlobalStartButton(
      {super.key,
      required this.text,
      required this.onPress,
      required this.style});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 100.w,
        maxWidth: 234.w,
        maxHeight: 44.h,
        minHeight: 35.h,
      ),
      width: 234.w,
      height: 44.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.lightGreen,
          padding:
              const EdgeInsets.only(top: 12, left: 32, right: 32, bottom: 12).r,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPress,
        child: Text(text, style: style),
      ),
    );
  }
}
