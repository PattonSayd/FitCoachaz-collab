import 'package:flutter/material.dart';

import '../screen_factory.dart/screen_factory.dart';

class AppRoutesName {
  AppRoutesName._();

  static const welcome = '/';
  static const register = '/register';
  static const profile = '/profile';
  static const otp = '/otp';
  static const email = 'email';
  static const main = 'main';
  static const user = 'user';
  static const account = '/account';
  static const subscribe = '/subscribe'; // main/subscribe📍
}

class AppRoutes {
  AppRoutes._();

  static final routes = <String, Widget Function(BuildContext)>{
    AppRoutesName.welcome: (_) => ScreenFactory.assembleWelcome(),
    AppRoutesName.register: (_) => ScreenFactory.assembleRegister(),
    AppRoutesName.otp: (_) => ScreenFactory.assembleOTP(),
    AppRoutesName.email: (_) => ScreenFactory.assembleEmail(),
    AppRoutesName.main: (_) => ScreenFactory.assembleMain(),
    AppRoutesName.profile: (_) => ScreenFactory.assembleProfile(),
    AppRoutesName.user: (_) => ScreenFactory.assembleUser(),
    AppRoutesName.account: (_) => ScreenFactory.assembleUserAccount(),
    AppRoutesName.subscribe: (_) => ScreenFactory.assembleSubscribe(),
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
