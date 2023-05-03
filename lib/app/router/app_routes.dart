import 'package:flutter/material.dart';

import '../screen_factory.dart/screen_factory.dart';

class AppRoutesName {
  AppRoutesName._();

  static const welcome = '/';
  static const register = '/register';
  static const otp = '/otp';
  static const email = 'email';
  static const accountName = 'account_name';
  static const congratulation = '/congratulation';
  static const main = 'main';
  static const subscribe = '/subscribe'; // main/subscribe📍
  static const profile = '/profile';
}

class AppRoutes {
  AppRoutes._();

  static final routes = <String, Widget Function(BuildContext)>{
    AppRoutesName.welcome: (_) => ScreenFactory.assembleWelcome(),
    AppRoutesName.register: (_) => ScreenFactory.assembleRegister(),
    AppRoutesName.otp: (_) => ScreenFactory.assembleOTP(),
    AppRoutesName.email: (_) => ScreenFactory.assembleEmail(),
    AppRoutesName.accountName: (_) => ScreenFactory.assembleAccountName(),
    AppRoutesName.congratulation: (_) => ScreenFactory.assembleCongratulation(),
    AppRoutesName.main: (_) => ScreenFactory.assembleMain(),
    AppRoutesName.subscribe: (_) => ScreenFactory.assembleSubscribe(),
    AppRoutesName.profile: (_) => ScreenFactory.assembleProfile(),
  };

  // static Route<Object> onGenerateRoute(RouteSettings settings) {
  //   switch (settings.name) {
  //     case AppRoutesName.email:
  //       final arguments = settings.arguments;
  //       final uid = arguments is String ? arguments : '';
  //       return MaterialPageRoute(
  //         builder: (context) => ScreenFactory.assembleEmail(uid),
  //       );

  //     default:
  //       return MaterialPageRoute(
  //         builder: (_) => const Text('Navigation error'),
  //       );
  //   }
  // }
}
