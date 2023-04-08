import 'package:flutter/material.dart';

import '../../ui/screens/account/user_account_screen.dart';
import '../../ui/screens/number/number_screen.dart';
import '../../ui/screens/otp/otp_screen.dart';
import '../../ui/screens/password/password_screen.dart';
import '../../ui/screens/username/username_screen.dart';
import '../../ui/screens/tabs/tabs_navigator.dart';
import '../../ui/screens/welcome/welcome_screen.dart';

class ScreenFactory {
  ScreenFactory._();

  static Widget assembleWelcome() {
    return const WelcomeScreen();
  }

  static Widget assembleSignIn() {
    return const NumberScreen();
  }

  static Widget assembleOTP() {
    return const OTPScreen();
  }

  static Widget assemblePassw() {
    return const PasswordScreen();}
    
  static Widget assembleMain() {
    return const TabsNavigator();
  }
  static Widget assembleUser() {
    return const UsernameScreen();
  }
  static Widget assembleUserAccount() {
    return const UserAccountScreen();
  }
}
