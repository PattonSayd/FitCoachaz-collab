import 'package:fitcoachaz/ui/bloc/account_name/account_name_bloc.dart';
import 'package:fitcoachaz/ui/bloc/congratulation/congratulation_bloc.dart';
import 'package:fitcoachaz/ui/bloc/otp/otp_bloc.dart';
import 'package:fitcoachaz/ui/formz/phone_field/phone_field_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../ui/bloc/email/email_bloc.dart';
import '../../ui/bloc/register/register_bloc.dart';
import '../../ui/bloc/timer/timer_bloc.dart';
import '../../ui/screens/congratulation/congratulation_screen.dart';
import '../../ui/screens/profile/profile_screen.dart';
import '../../ui/screens/register/register_screen.dart';
import '../../ui/screens/otp/otp_screen.dart';

import '../../ui/screens/password/password_screen.dart';
import '../../ui/screens/splash/splash_screen.dart';
import '../../ui/screens/username/username_screen.dart';

import '../../ui/screens/email/email_screen.dart';
import '../../ui/screens/account_name/account_name_screen.dart';

import '../../ui/screens/subscribe/subscribe_screen.dart';
import '../../ui/screens/tabs/tabs_navigator.dart';
import '../../ui/screens/welcome/welcome_screen.dart';
import '../assemble/assemble.dart';

class ScreenFactory {
  ScreenFactory._();

  static Widget assembleWelcome() {
    return const WelcomeScreen();
  }

  static Widget assembleProfile() {
    return const ProfileScreen();
  }

  static Widget assembleRegister() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RegisterBloc>.value(value: assemble.register),
        BlocProvider<PhoneFieldBloc>(create: (context) => assemble.phoneField)
      ],
      child: const RegisterScreen(),
    );
  }

  static Widget assembleOTP() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RegisterBloc>.value(value: assemble.register),
        BlocProvider<OtpBloc>.value(value: assemble.otp),
        BlocProvider<TimerBloc>(create: (context) => assemble.timer),
      ],
      child: const OTPScreen(),
    );
  }

  static Widget assembleEmail() {
    return BlocProvider<EmailBloc>(
      create: (context) => assemble.email,
      child: const EmailScreen(),
    );
  }

  static Widget assembleMain() {
    return const TabsNavigator();
  }

  static Widget assembleAccountName() {
    return BlocProvider<AccountNameBloc>(
      create: (context) => assemble.accountName,
      child: const AccountNameScreen(),
    );
  }

  static Widget assembleCongratulation() {
    return BlocProvider<CongratulationBloc>(
      lazy: false,
      create: (context) => assemble.congrBloc,
      child: const CongratulationScreen(),
    );
  }

  static Widget assembleSubscribe() {
    return const SubscribeScreen();
  }

  static Widget assembleSplash() {
    return const SplashScreen();
  }
}
