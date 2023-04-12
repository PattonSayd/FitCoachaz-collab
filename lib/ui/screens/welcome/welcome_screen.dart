import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/app/resources/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/router/app_routes.dart';
import '../../style/text_style.dart';
import '../../widgets/global_start_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.welcomeScreen),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(AppAssets.logoFit, width: 242.w),
              SizedBox(height: 14.h),
              SizedBox(
                width: 234.w,
                child: Text(
                  context.localizations.welcomeCaption,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.welcomeCaption,
                ),
              ),
              SizedBox(height: 47.h),
              GlobalStartButton(
                  text: context.localizations.startButtom,
                  style: AppTextStyle.startButton,
                  onPress: () {
                    Navigator.pushNamed(context, AppRoutesName.signin);
                  }),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.localizations.initQestion,
                    style: AppTextStyle.initQestion,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      context.localizations.signInButton,
                      style: AppTextStyle.signInButton,
                    ),
                  ),
                  SizedBox(height: 60.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
