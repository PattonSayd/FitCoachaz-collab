import 'package:flutter/material.dart';

import '../../ui/screens/number/number_screen.dart';
import '../../ui/screens/otp/otp_screen.dart';
import '../../ui/screens/password/password_screen.dart';
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
    return const PasswordScreen();
  }
}
