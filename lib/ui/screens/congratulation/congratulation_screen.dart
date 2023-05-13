import 'dart:math';

import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/app/resources/app_assets.dart';
import 'package:fitcoachaz/ui/widgets/global_start_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../app/router/app_routes.dart';
import '../../bloc/congratulation/congratulation_bloc.dart';
import '../../bloc/congratulation/congratulation_bloc.dart';
import '../../style/app_text_style.dart';
import '../../theme/app_colors.dart';

class CongratulationScreen extends StatelessWidget {
  const CongratulationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: BlocBuilder<CongratulationBloc, CongratulationState>(
          builder: (context, state) {
            if (state.status == CongratulationStatus.loading) {
              return const Center(
                  child: CircularProgressIndicator(
                color: AppColors.brightSilver,
              ));
            }
            return Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CustomPaint(
                      size: Size(double.infinity, 263.h),
                      painter: _CurvePainter(),
                    ),
                    Positioned(
                      left: context.deviceWidth / 2 - 130.w / 2,
                      bottom: -130.w / 2,
                      child: SvgPicture.asset(
                        AppAssets.congrlogo,
                        width: 130.w,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "${context.localizations.welcomeMessage} , ${state.name}!",
                    style: AppTextStyle.user,
                  ),
                ),
                SizedBox(height: 12.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    context.localizations.welcomeUserMessage,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.welcomeUserText,
                  ),
                ),
                const Spacer(),
                GlobalStartButton(
                    text: context.localizations.startButtom,
                    style: AppTextStyle.startButton,
                    onPress: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, AppRoutesName.tabs, (route) => false);
                    }),
                SizedBox(height: 40.h),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.lightGreen77
      ..style = PaintingStyle.fill;

    final rect =
        Rect.fromLTWH(-size.width / 2, -263.h, size.width * 2, size.height * 2);
    canvas.drawArc(rect, pi, 2 * pi, true, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
