import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/app/resources/app_assets.dart';
import 'package:fitcoachaz/ui/widgets/global_start_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/router/app_routes.dart';
import '../../style/text_style.dart';
import '../../theme/app_colors.dart';

class UserAccountScreen extends StatelessWidget {
  const UserAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            body: SingleChildScrollView(
                child: Column(children: [
          CustomPaint(
            size: Size(390.w, (390.w * 2.164102564102564).toDouble()),
            painter: RPSCustomPainter(),
            child: Column(
              children: [
                SizedBox(height: 181.h),
                Image.asset(
                  AppAssets.rectangle,
                  width: 130,
                  height: 130,
                ),
                Text(
                  "${context.localizations.welcomeMessage} , Nazrin!",
                  style: AppTextStyle.user,
                ),
                SizedBox(height: 12.h),
                Text(
                  context.localizations.welcomeUserMessage,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.welcomeUserText,
                ),
                SizedBox(
                  height: 367.h,
                ),
                GlobalStartButton(
                    text: context.localizations.startButtom,
                    style: AppTextStyle.startButton,
                    onPress: () {
                      Navigator.pushNamed(context, AppRoutesName.main);
                    }),
                SizedBox(height: 50.h),
              ],
            ),
          ),
        ]))));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = AppColors.lightGreen
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.2562322);
    path0.lineTo(size.width * 0.0011795, size.height * 0.2608175);
    path0.quadraticBezierTo(size.width * 0.5030769, size.height * 0.3112559,
        size.width * 0.5052308, size.height * 0.3117062);
    path0.cubicTo(
        size.width * 0.5100256,
        size.height * 0.3113152,
        size.width * 1.0076154,
        size.height * 0.2614692,
        size.width,
        size.height * 0.2578673);
    path0.quadraticBezierTo(
        size.width * 1.0054615, size.height * 0.1936137, size.width, 0);
    path0.lineTo(size.width * 0.7706154, size.height * 0.0013033);
    path0.lineTo(size.width * 0.0053333, 0);
    path0.lineTo(0, size.height * 0.2562322);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
