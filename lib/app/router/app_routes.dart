import 'package:flutter/material.dart';

import '../screen_factory.dart/screen_factory.dart';

class AppRoutesName {
  AppRoutesName._();

  static const welcome = '/';
  static const main = 'main';
}

class AppRoutes {
  AppRoutes._();

  static final routes = <String, Widget Function(BuildContext)>{
    AppRoutesName.welcome: (_) => ScreenFactory.assembleWelcome(),
    AppRoutesName.main: (_) => ScreenFactory.assembleMain(),
  };
}
