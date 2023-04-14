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
  static TextStyle get subDescription => TextStyle(
        fontSize: 14.spMin,
        height: 1.28,
        color: AppColors.grey,
      );
  static TextStyle get subStudents => TextStyle(
        fontSize: 16.spMin,
        height: 1.28,
        color: AppColors.darkBlue,
        fontFamily: AppFonts.alatsiRegular,
      );

  static TextStyle get verifyButton => TextStyle(
        fontSize: 16.spMin,
        fontFamily: AppFonts.alatsiRegular,
        height: 1.17,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get bigHeader => TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 38.spMin,
      fontFamily: AppFonts.alatsiRegular,
      height: 1.31,
      color: AppColors.black);

  static TextStyle get passwHeader => TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 42.spMin,
      fontFamily: AppFonts.alatsiRegular,
      height: 1.20,
      color: AppColors.black);
  static TextStyle get labelText => TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
      fontFamily: AppFonts.alatsiRegular,
      height: 1.6,
      color: AppColors.silver);

  static TextStyle get otpFieldText => TextStyle(
        fontSize: 22.sp,
        height: 1.27,
        color: AppColors.darkGrey,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get resendText => TextStyle(
        fontSize: 16.spMin,
        height: 1.5,
        color: AppColors.lightGreen,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get choosePassw => TextStyle(
        fontSize: 14.spMin,
        height: 1.42,
        color: AppColors.black,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get profileScreenTitle => TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w400,
        fontSize: 16.spMin,
        height: 1.63,
        fontFamily: AppFonts.alatsiRegular,
      );

  static TextStyle get profileScreenUserName => TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w400,
        fontSize: 24.spMin,
        height: 1.42,
        fontFamily: AppFonts.alatsiRegular,
      );

  static TextStyle get profileScreenListItem => TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w400,
        fontSize: 16.spMin,
        height: 1.63,
        fontFamily: AppFonts.alatsiRegular,
      );

  static TextStyle get user => TextStyle(
        fontFamily: AppFonts.alatsiRegular,
        color: AppColors.black,
        fontSize: 22.spMin,
        height: 1.27,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get welcomeUserText => TextStyle(
        fontFamily: AppFonts.alatsiRegular,
        color: AppColors.black,
        fontSize: 14.spMin,
        height: 1.42,
        fontWeight: FontWeight.w400,
      );
}
