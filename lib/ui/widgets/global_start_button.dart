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
      constraints: const BoxConstraints(
        minWidth: 100,
        maxWidth: 234,
        maxHeight: 44,
        minHeight: 35,
      ),
      width: 234.w,
      height: 44.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
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
