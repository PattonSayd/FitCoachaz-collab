import 'package:flutter/material.dart';

import '../../ui/screens/profile/profile_screen.dart';
import '../../ui/screens/welcome/welcome_screen.dart';

class ScreenFactory {
  ScreenFactory._();

  static Widget assembleWelcome() {
    return const WelcomeScreen();
  }

  static Widget assembleProfile() {
    return const ProfileScreen();
  }
}
