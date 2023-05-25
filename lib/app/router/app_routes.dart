import 'package:fitcoachaz/data/models/coach.dart';
import 'package:flutter/material.dart';

import '../screen_factory.dart/screen_factory.dart';

class AppRoutesName {
  AppRoutesName._();

  static const welcome = '/welcome';
  static const register = '/register';
  static const splash = '/splash';
  static const profile = 'main/profile';
  static const otp = '/otp';
  static const email = '/email';
  static const sendEmailSuccess = '/sendEmailSuccess';
  static const accountName = '/account_name';
  static const congratulation = '/congratulation';
  static const tabs = '/tabs';
  static const subscribe = 'main/subscribe'; // main/subscribe📍
  static const seeAll = 'main/seeAll';
  static const notification = 'main/notification';
  static const category = 'main/category';
}

class AppRoutes {
  AppRoutes._();

  static final routes = <String, Widget Function(BuildContext)>{
    AppRoutesName.welcome: (_) => ScreenFactory.assembleWelcome(),
    AppRoutesName.register: (_) => ScreenFactory.assembleRegister(),
    AppRoutesName.email: (_) => ScreenFactory.assembleEmail(),
    AppRoutesName.accountName: (_) => ScreenFactory.assembleAccountName(),
    AppRoutesName.congratulation: (_) => ScreenFactory.assembleCongratulation(),
    AppRoutesName.tabs: (_) => ScreenFactory.assembleTabs(),
    AppRoutesName.splash: (_) => ScreenFactory.assembleSplash(),
    AppRoutesName.profile: (_) => ScreenFactory.assembleProfile(),
    AppRoutesName.notification: (_) => ScreenFactory.assembleNotification(),
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
      case AppRoutesName.seeAll:
        final coach = settings.arguments as List<Coach>;
        return MaterialPageRoute(
            builder: (context) => ScreenFactory.assembleSeeAll(coach: coach));
      case AppRoutesName.subscribe:
        var coach = settings.arguments as Coach;
        return MaterialPageRoute(
            builder: (context) =>
                ScreenFactory.assembleSubscribe(coach: coach));
      case AppRoutesName.category:
        var sport = settings.arguments as String;
        return MaterialPageRoute(
            builder: (context) => ScreenFactory.assembleCategory(sport: sport));
      case AppRoutesName.sendEmailSuccess:
        var email = settings.arguments as String;
        return MaterialPageRoute(
            builder: (context) =>
                ScreenFactory.assembleSendEmailSuccess(email: email));
      default:
        return MaterialPageRoute(
          builder: (_) => const Text('Navigation error'),
        );
    }
  }
}
