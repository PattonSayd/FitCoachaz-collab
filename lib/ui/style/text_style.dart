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

 static TextStyle get activeButton =>  TextStyle(
      fontSize: 16.spMin,
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
  
  static TextStyle get bigHeader => TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 38.spMin,
      fontFamily: AppFonts.alatsiRegular,
      height: 1.31,
      color: AppColors.black
      );

  static TextStyle get passwHeader => TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 42.spMin,
      fontFamily: AppFonts.alatsiRegular,
      height: 1.20,
      color: AppColors.black
      );    
  static TextStyle get labelText => TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14.spMin,
      fontFamily: AppFonts.alatsiRegular,
      height: 1.6,
      color: AppColors.silver
      );

  static TextStyle get otpFieldText=> TextStyle(
        fontSize: 22.sp, 
        height: 1.27,
        color: AppColors.darkGrey,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get resendText=> TextStyle(
        fontSize: 16.spMin, 
        height: 1.5,
        color: AppColors.lightGreen,
        fontWeight: FontWeight.w400,
      );
   static TextStyle get choosePassw=> TextStyle(
        fontSize: 14.spMin, 
        height: 1.42,
        color: AppColors.black,
        fontWeight: FontWeight.w400,
      );
   static TextStyle get floatingLabelStyle => TextStyle(
        color: AppColors.silver,
        fontSize: 16.spMin, 
        height: 1.6,
        fontWeight: FontWeight.w400,
      );
   static TextStyle get user=> TextStyle(
        fontFamily: AppFonts.alatsiRegular,
        color: AppColors.black,
        fontSize: 22.spMin, 
        height: 1.27,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get welcomeUserText  => TextStyle(
        fontFamily: AppFonts.alatsiRegular,
        color: AppColors.black,
        fontSize: 14.spMin, 
        height: 1.42,
        fontWeight: FontWeight.w400,
      );

}
