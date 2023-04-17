import 'package:flutter/material.dart';

import '../screen_factory.dart/screen_factory.dart';

class AppRoutesName {
  AppRoutesName._();

  static const welcome = '/';
  static const profile = '/profile';
  static const login = '/login';
  static const otp = '/otp';
  static const passw = '/passw';
  static const main = 'main';
  static const user = '/user';
  static const account = '/account';
  static const subscribe = '/subscribe'; // main/subscribe📍
}

class AppRoutes {
  AppRoutes._();

  static final routes = <String, Widget Function(BuildContext)>{
    AppRoutesName.welcome: (_) => ScreenFactory.assembleWelcome(),
    AppRoutesName.profile: (_) => ScreenFactory.assembleProfile(),
    AppRoutesName.login: (_) => ScreenFactory.assembleLogin(),
    AppRoutesName.otp: (_) => ScreenFactory.assembleOTP(),
    AppRoutesName.passw: (_) => ScreenFactory.assemblePassw(),
    AppRoutesName.main: (_) => ScreenFactory.assembleMain(),
    AppRoutesName.user: (_) => ScreenFactory.assembleUser(),
    AppRoutesName.account: (_) => ScreenFactory.assembleUserAccount(),
    AppRoutesName.subscribe: (_) => ScreenFactory.assembleSubscribe(),
  };
}
