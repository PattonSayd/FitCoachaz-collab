import 'package:flutter/material.dart';

import '../screen_factory.dart/screen_factory.dart';

typedef AppRoutersType = Map<String, Widget Function(BuildContext)>;

class AppRoutesName {
  const AppRoutesName._();

  static const main = '/';
  static const signin = '/signin';
}

class AppRoutes {
  const AppRoutes._();

  static final AppRoutersType routes = {
    AppRoutesName.main: (_) => ScreenFactory.assembleMain(),
  };
}
