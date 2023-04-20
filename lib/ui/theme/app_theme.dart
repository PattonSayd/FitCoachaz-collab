import 'package:flutter/material.dart';

import 'app_colors.dart';
import '../style/app_styles.dart';

class AppTheme {
  AppTheme._();

  static final light = ThemeData(
    primarySwatch: Colors.grey,
    iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
            backgroundColor: AppColors.silver, iconSize: 10)),
    appBarTheme: const AppBarTheme(color: Colors.white, elevation: 0.0),
    scaffoldBackgroundColor: AppColors.white,
    inputDecorationTheme: inputDecorationTheme(),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.pink,
      unselectedItemColor: AppColors.grey,
    ),
    popupMenuTheme: const PopupMenuThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    fillColor: AppColors.lightBlue,
    filled: true,
    enabledBorder: AppStyles.outlineInputBorder(),
    border: AppStyles.outlineInputBorder(),
    focusedBorder: AppStyles.outlineInputBorder(color: AppColors.lightGreen),
    errorBorder: AppStyles.outlineInputBorder(color: AppColors.pink),
    focusedErrorBorder: AppStyles.outlineInputBorder(color: AppColors.pink),
  );
}
