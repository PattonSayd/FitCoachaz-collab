import 'package:fitcoachaz/app/screen_factory.dart/screen_factory.dart';
import 'package:fitcoachaz/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/resources/app_assets.dart';
import 'tabs_components.dart';

class BottomNavBarItem {
  final String icon;

  const BottomNavBarItem(
    this.icon,
  );
}

class TabsNavigator extends StatefulWidget {
  const TabsNavigator({super.key});

  @override
  State<TabsNavigator> createState() => _TabsNavigatorState();
}

class _TabsNavigatorState extends State<TabsNavigator> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: [
            ScreenFactory.assembleMain(),
            const Center(child: Text("Book Screen")),
            const Center(child: Text("Profile Screen")),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 80.h,
            padding: const EdgeInsets.fromLTRB(0, 6, 0, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _buildBottomNavBarItems(),
            ),
          ),
        ));
  }

  List<Widget> _buildBottomNavBarItems() {
    List<BottomNavBarItem> items = [
      BottomNavBarItem(AppAssets.homeTab),
      BottomNavBarItem(AppAssets.bookmarkTab),
      BottomNavBarItem(AppAssets.profileTab),
    ];

    return items
        .asMap()
        .entries
        .map((e) => InkResponse(
              overlayColor: MaterialStateProperty.all(AppColors.transparent),
              onTap: () => setState(() => selectedIndex = e.key),
              child: BottomNavBar(
                image: e.value.icon,
                selected: selectedIndex == e.key,
              ),
            ))
        .toList();
  }
}
