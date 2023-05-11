import 'package:fitcoachaz/app/router/app_routes.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:fitcoachaz/ui/screens/main/main_screen.dart';
import 'package:fitcoachaz/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/resources/app_assets.dart';
import '../../bloc/session/session_bloc.dart';
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
  void initState() {
    super.initState();
    context.read<SessionBloc>().add(const SessionEvent.checkSession());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SessionBloc, SessionState>(
      listener: (context, state) => state.mapOrNull(
        unauthorized: (value) => Navigator.pushNamedAndRemoveUntil(
            context, AppRoutesName.welcome, (route) => false),
      ),
      builder: (context, state) {
        return Scaffold(
            body: IndexedStack(
              index: selectedIndex,
              children: [
                MainScreen(),
                state.maybeWhen(
                    authorized: () => const Center(child: Text("Book Screen")),
                    orElse: () => const SizedBox.shrink()),
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
                  children: _buildBottomNavBarItems(state),
                ),
              ),
            ));
      },
    );
  }

  List<Widget> _buildBottomNavBarItems(SessionState state) {
    bool isLoggedIn =
        state.maybeWhen(authorized: () => true, orElse: () => false);

    List<BottomNavBarItem> items = isLoggedIn
        ? [
            BottomNavBarItem(AppAssets.homeTab),
            BottomNavBarItem(AppAssets.bookmarkTab),
            BottomNavBarItem(AppAssets.profileTab),
          ]
        : [
            BottomNavBarItem(AppAssets.homeTab),
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
