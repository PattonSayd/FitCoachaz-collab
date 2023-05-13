import 'package:fitcoachaz/ui/bloc/account_name/account_name_bloc.dart';
import 'package:fitcoachaz/ui/bloc/congratulation/congratulation_bloc.dart';
import 'package:fitcoachaz/ui/bloc/main/main_bloc.dart';
import 'package:fitcoachaz/ui/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../ui/bloc/email/email_bloc.dart';
import '../../ui/bloc/register/register_bloc.dart';
import '../../ui/bloc/session/session_bloc.dart';
import '../../ui/bloc/timer/timer_bloc.dart';
import '../../ui/screens/congratulation/congratulation_screen.dart';
import '../../ui/screens/profile/profile_screen.dart';
import '../../ui/screens/register/register_screen.dart';
import '../../ui/screens/otp/otp_screen.dart';

import '../../ui/screens/splash/splash_screen.dart';

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
        BlocProvider<RegisterBloc>(create: (_) => assemble.register),
      ],
      child: const RegisterScreen(),
    );
  }

  static Widget assembleOTP({
    required String phoneNumber,
    required String verificationId,
  }) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RegisterBloc>(create: (_) => assemble.register),
        BlocProvider<TimerBloc>(create: (_) => assemble.timer),
      ],
      child: OTPScreen(
        phoneNumber: phoneNumber,
        verificationId: verificationId,
      ),
    );
  }

  static Widget assembleEmail() {
    return BlocProvider<EmailBloc>(
      create: (_) => assemble.email,
      child: const EmailScreen(),
    );
  }

  static Widget assembleTabs() {
    return BlocProvider.value(
      value: assemble.session,
      child: const TabsNavigator(),
    );
  }

  static Widget assembleAccountName() {
    return BlocProvider<AccountNameBloc>(
      create: (_) => assemble.accountName,
      child: const AccountNameScreen(),
    );
  }

  static Widget assembleCongratulation() {
    return BlocProvider<CongratulationBloc>(
      lazy: false,
      create: (_) => assemble.congratulation,
      child: const CongratulationScreen(),
    );
  }

  static Widget assembleSubscribe() {
    return const SubscribeScreen();
  }

  static Widget assembleSplash() {
    return BlocProvider<SessionBloc>.value(
      value: assemble.session,
      child: const SplashScreen(),
    );
  }

  static Widget assembleMain() {
    return BlocProvider.value(
      value: assemble.main,
      child: MainScreen(),
    );
  }
}
