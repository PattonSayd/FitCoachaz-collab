import 'package:fitcoachaz/app/resources/app_fonst.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_colors.dart';

class AppTextStyle {
  const AppTextStyle._();

  static TextStyle get miniHeader =>  TextStyle(
      fontSize: 18.spMin,
      fontFamily: 'AlatsiRegular',
      height: 1.21,
      fontWeight: FontWeight.w900,
      color: AppColors.black);

  static TextStyle get startButton =>  TextStyle(
        fontSize: 16.spMin, 
        fontFamily: AppFonts.alatsiRegular,
        height: 1.25,
        fontWeight: FontWeight.w400,
        color: AppColors.white,
      );

  static TextStyle get deactiveButton =>  TextStyle(
      fontSize: 16.spMin,
      fontFamily: AppFonts.alatsiRegular,
      height: 1.17,
      fontWeight: FontWeight.w500,
      color: AppColors.silver);

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
  
  static TextStyle get bigHeader => TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 38.spMin,
      fontFamily: AppFonts.alatsiRegular,
      height: 1.31,
      color: AppColors.black
      );
  static TextStyle get labelText => TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 10.spMin,
      fontFamily: AppFonts.alatsiRegular,
      height: 1.6,
      color: AppColors.silver
      );
}
