import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../app/resources/app_icons.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';
import '../../components/bordered_icon_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 60.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.spMin),
              child: Row(
                children: [
                  BorderedIconButton(
                    icon: AppIcons.chevronLeft,
                    onTap: () => Navigator.pop(context),
                  ),
                  Expanded(
                    child: Text(
                      'Hesab',
                      style: AppTextStyle.profileScreenTitle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const BorderedIconButton(
                    icon: AppIcons.more,
                  ),
                ],
              ),
            ),
            SizedBox(height: 27.h),
            Hero(
              tag: 'user-avatar',
              child: CircleAvatar(
                radius: 60.spMin,
                backgroundColor: Colors.transparent,
                child: Image.asset('assets/images/dummy-profile-avatar.png'),
              ),
            ),
            SizedBox(height: 11.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.spMin),
              child: Text(
                'Nərgiz Əliyeva',
                style: AppTextStyle.profileScreenUserName,
              ),
            ),
            SizedBox(height: 72.h),
            const Divider(),
            SizedBox(height: 32.h),
            _SelectionListTile(
                text: 'Hədəflər', icon: AppIcons.targets, onTap: () {}),
            SizedBox(height: 32.h),
            _SelectionListTile(
                text: 'Bədən Parametrləri',
                icon: AppIcons.bodySettings,
                onTap: () {}),
            SizedBox(height: 32.h),
            _SelectionListTile(
                text: 'Parametrlər', icon: AppIcons.settings, onTap: () {}),
            SizedBox(height: 35.h),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.exit_to_app,
                  color: AppColors.pink,
                )),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationX(pi),
                  child: SizedBox(
                    height: 126.h,
                    width: double.infinity,
                    child: CustomPaint(
                      painter: CurvePainter(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SelectionListTile extends StatelessWidget {
  const _SelectionListTile({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final String icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.spMin),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24.spMin,
            backgroundColor: AppColors.lightPink.withOpacity(0.42),
            child: SvgPicture.asset(
              icon,
              width: 24.spMin,
              height: 24.spMin,
              color: AppColors.black,
            ),
          ),
          SizedBox(width: 24.spMin),
          Expanded(
            child: Text(
              text,
              style: AppTextStyle.profileScreenListItem,
            ),
          ),
          SizedBox(width: 24.spMin),
          SvgPicture.asset(
            AppIcons.chevronRight,
            width: 24.spMin,
            height: 24.spMin,
            color: AppColors.black,
          ),
        ],
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = AppColors.lightGreen.withOpacity(0.25);
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, 50.h);
    path.quadraticBezierTo(size.width / 2, size.height, size.width, 50.h);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
