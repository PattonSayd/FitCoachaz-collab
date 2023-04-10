import 'package:fitcoachaz/app/resources/app_fonst.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_colors.dart';

class AppTextStyle {
  const AppTextStyle._();

  static TextStyle get miniHeader => const TextStyle(
      fontSize: 18,
      fontFamily: 'AlatsiRegular',
      height: 1.21,
      fontWeight: FontWeight.w900,
      color: AppColors.black);

  static TextStyle get startButton => const TextStyle(
        fontSize: 16,
        fontFamily: AppFonts.alatsiRegular,
        height: 1.25,
        fontWeight: FontWeight.w400,
        color: AppColors.white,
      );

  static TextStyle get deactiveButton => const TextStyle(
      fontSize: 16,
      fontFamily: AppFonts.alatsiRegular,
      height: 1.17,
      fontWeight: FontWeight.w500,
      color: AppColors.white);

  static TextStyle get welcomeCaption => TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w400,
      height: 1.28,
      fontSize: 16.spMin,
      fontFamily: AppFonts.alatsiRegular);

  static TextStyle get initQestion => TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w400,
      fontSize: 16.spMin,
      height: 1.27,
      fontFamily: AppFonts.alatsiRegular);

  static TextStyle get signInButton => TextStyle(
      color: AppColors.lightGreen,
      fontWeight: FontWeight.w400,
      fontSize: 16.spMin,
      height: 1.27,
      fontFamily: AppFonts.alatsiRegular);

  static TextStyle get searchIcon => TextStyle(
        color: AppColors.grey,
        fontWeight: FontWeight.w400,
        fontFamily: AppFonts.alatsiRegular,
        fontSize: 14.spMin,
        height: 1.42,
      );

  static TextStyle get trendCoaches => TextStyle(
        fontSize: 16.spMin,
        height: 1.30,
        fontWeight: FontWeight.w400,
        fontFamily: AppFonts.alatsiRegular,
        color: AppColors.darkBlue,
      );

  static TextStyle get seeAllTrendCoaches => TextStyle(
        fontSize: 14.spMin,
        height: 1.21,
        fontWeight: FontWeight.w400,
        fontFamily: AppFonts.alatsiRegular,
        shadows: const [
          Shadow(
            color: AppColors.pink,
            offset: Offset(0, -1.2),
          )
        ],
        decorationColor: AppColors.pink,
        color: AppColors.transparent,
        decoration: TextDecoration.underline,
      );

  static TextStyle get cardSport => TextStyle(
        fontSize: 12.spMin,
        height: 1.10,
        color: AppColors.grey,
        fontFamily: AppFonts.abelRegular,
      );

  static TextStyle get cardCoachName => TextStyle(
        fontSize: 16.spMin,
        height: 1.28,
        color: AppColors.darkBlue,
        fontFamily: AppFonts.alatsiRegular,
      );

  static TextStyle get cardDateTime => TextStyle(
        fontSize: 14.spMin,
        height: 1.4,
        color: AppColors.grey,
        fontFamily: AppFonts.alatsiRegular,
      );

  static TextStyle get cardRanking => TextStyle(
        fontSize: 14.spMin,
        height: 1.4,
        color: AppColors.grey,
        fontFamily: AppFonts.alatsiRegular,
      );

  static TextStyle get slideButton =>
      const TextStyle(fontSize: 7, height: 1.43, color: AppColors.white);

  static TextStyle get slideCaption => TextStyle(
        fontSize: 20.spMin,
        height: 1.28,
        color: AppColors.white,
        fontFamily: AppFonts.alatsiRegular,
      );
}
