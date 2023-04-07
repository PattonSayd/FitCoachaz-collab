import 'package:flutter/material.dart';

import '../../../app/resources/app_assets.dart';

class BottomNavBarItem {
  final String icon;

  const BottomNavBarItem(
    this.icon,
  );
}

mixin TabsMixin<T extends StatefulWidget> on State<T> {
  int selectedIndex = 0;
  late final List<BottomNavBarItem> bottomNavBarItems;

  @override
  void initState() {
    super.initState();

    bottomNavBarItems = [
      BottomNavBarItem(AppAssets.homeTab),
      BottomNavBarItem(AppAssets.bookmarkTab),
      BottomNavBarItem(AppAssets.profileTab),
    ];
  }
}
