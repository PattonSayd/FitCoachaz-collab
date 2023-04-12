import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../app/resources/app_assets.dart';
import '../../theme/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  final String image;
  final bool selected;
  const BottomNavBar({
    Key? key,
    required this.image,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                selected ? AppColors.pink : AppColors.grey, BlendMode.srcIn),
            width: 19.w,
            height: 20.h,
          ),
          SizedBox(height: 6.h),
          selected
              ? SvgPicture.asset(AppAssets.lineTab, width: 16.w, height: 3.h)
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
