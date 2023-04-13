import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class AppStyles {
  static OutlineInputBorder outlineInputBorder(
          {Color color = AppColors.brightSilver}) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color,
          width: 2,
        ),
      );

  static final InputDecoration otpInputDecoration = InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 16),
    enabledBorder: otpOutlineInputBorder(),
    focusedBorder: AppStyles.outlineInputBorder(color: AppColors.lightGreen),
    border: otpOutlineInputBorder(),
  );

  static OutlineInputBorder otpOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.grey),
    );
  }
}
