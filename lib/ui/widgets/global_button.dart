import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fitcoachaz/app/extension/build_context.dart';

import '../style/app_text_style.dart';
import '../theme/app_colors.dart';

class GlobalButton extends StatelessWidget {
  final VoidCallback onPress;
  final bool isActive;

  const GlobalButton({
    Key? key,
    required this.onPress,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 200,
        maxWidth: 370,
        maxHeight: 50,
        minHeight: 44,
      ),
      width: 342.w,
      height: 44.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          splashFactory: NoSplash.splashFactory,
          disabledBackgroundColor: AppColors.brightSilver,
          foregroundColor: AppColors.white,
          disabledForegroundColor: AppColors.silver,
          backgroundColor: AppColors.lightGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: isActive ? onPress : null,
        child: Text(
          context.localizations.confirmText,
          style: AppTextStyle.verifyButton,
        ),
      ),
    );
  }
}
