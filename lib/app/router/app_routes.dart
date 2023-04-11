import 'package:flutter/material.dart';

import '../screen_factory.dart/screen_factory.dart';

class AppRoutesName {
  AppRoutesName._();

  static const welcome = '/';
  static const profile = '/profile';
  static const signin = '/signin';
  static const otp = '/otp';
  static const passw = '/passw';
  static const main = 'main';
}

class AppRoutes {
  AppRoutes._();

  static final routes = <String, Widget Function(BuildContext)>{
    AppRoutesName.welcome: (_) => ScreenFactory.assembleWelcome(),
    AppRoutesName.profile: (_) => ScreenFactory.assembleProfile(),
    AppRoutesName.signin: (_) => ScreenFactory.assembleSignIn(),
    AppRoutesName.otp: (_) => ScreenFactory.assembleOTP(),
    AppRoutesName.passw: (_) => ScreenFactory.assemblePassw(),
    AppRoutesName.main: (_) => ScreenFactory.assembleMain(),
  };
}
