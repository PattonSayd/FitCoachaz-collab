import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_colors.dart';

class UnifiedButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget? child;

  const UnifiedButton({
    Key? key,
    required this.onPressed,
    this.child,
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
          disabledForegroundColor: AppColors.silver,
          foregroundColor: AppColors.white,
          backgroundColor: AppColors.lightGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
