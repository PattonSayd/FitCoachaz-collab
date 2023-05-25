import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitcoachaz/app/assemble/assemble.dart';
import 'package:fitcoachaz/app/extension/build_context.dart';
import 'package:fitcoachaz/app/resources/app_assets.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:fitcoachaz/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/router/app_routes.dart';
import '../../style/app_text_style.dart';
import '../../widgets/global_start_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {
  bool _isUserAuthenticated = false;
  StreamSubscription<User?>? _authStateSubscription;

  @override
  void initState() {
    super.initState();
    _authStateSubscription =
        assemble.auth.authStateChanges().listen((User? user) {
      final email = user?.emailVerified ?? false;
      final name = user?.displayName != null && user?.displayName != '';
      logger.i(user.toString());
      setState(() {
        _isUserAuthenticated = user != null && email && name;
      });
      if (_isUserAuthenticated) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutesName.tabs,
          (route) => false,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !_isUserAuthenticated,
      child: const _BuildPlaceholder(),
    );
  }

  @override
  void dispose() {
    logger.w('dispose');
    _authStateSubscription?.cancel();
    super.dispose();
  }
}

class _BuildPlaceholder extends StatelessWidget {
  const _BuildPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    logger.w('BuildPlaceholder +++++++++++');
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: AppColors.black,
        resizeToAvoidBottomInset: false,
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
                    Navigator.pushNamed(context, AppRoutesName.tabs);
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
                    onPressed: () =>
                        Navigator.pushNamed(context, AppRoutesName.register),
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
