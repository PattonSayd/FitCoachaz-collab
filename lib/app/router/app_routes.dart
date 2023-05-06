import 'dart:convert';

import 'package:flutter/material.dart';

import '../screen_factory.dart/screen_factory.dart';

class AppRoutesName {
  AppRoutesName._();

  static const welcome = '/';
  static const register = '/register';

  static const splash = '/splash';
  static const profile = '/profile';
  static const otp = '/otp';
  static const email = 'email';
  static const accountName = 'account_name';
  static const congratulation = '/congratulation';
  static const main = 'main';
  static const subscribe = '/subscribe'; // main/subscribe📍
}

class AppRoutes {
  AppRoutes._();

  static final routes = <String, Widget Function(BuildContext)>{
    AppRoutesName.welcome: (_) => ScreenFactory.assembleWelcome(),
    AppRoutesName.register: (_) => ScreenFactory.assembleRegister(),
    AppRoutesName.email: (_) => ScreenFactory.assembleEmail(),
    AppRoutesName.accountName: (_) => ScreenFactory.assembleAccountName(),
    AppRoutesName.congratulation: (_) => ScreenFactory.assembleCongratulation(),
    AppRoutesName.main: (_) => ScreenFactory.assembleMain(),
    AppRoutesName.subscribe: (_) => ScreenFactory.assembleSubscribe(),
    AppRoutesName.splash: (_) => ScreenFactory.assembleSplash(),
    AppRoutesName.profile: (_) => ScreenFactory.assembleProfile(),
  };

  static Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesName.otp:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => ScreenFactory.assembleOTP(
              phoneNumber: args['phoneNumber'],
              verificationId: args['verificationId']),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Text('Navigation error'),
        );
    }
  }
}
