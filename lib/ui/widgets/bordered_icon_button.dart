import 'package:fitcoachaz/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BorderedIconButton extends StatelessWidget {
  const BorderedIconButton({
    Key? key,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  final String icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 56,
          maxHeight: 56,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.w),
          border: Border.all(
            width: 1.5,
            color: AppColors.black.withOpacity(0.1),
          ),
        ),
        height: 56.w,
        width: 56.w,
        alignment: Alignment.center,
        child: SvgPicture.asset(
          icon,
          width: 24.spMin,
          height: 24.spMin,
          color: onTap != null ? AppColors.black : AppColors.grey,
        ),
      ),
    );
  }
}
