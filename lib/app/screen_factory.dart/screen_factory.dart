import 'package:fitcoachaz/domain/repositories/register/register_repository.dart';
import 'package:fitcoachaz/ui/bloc/timer/ticker.dart';
import 'package:fitcoachaz/ui/formz/phone_field/phone_field_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../ui/bloc/register/register_bloc.dart';
import '../../ui/bloc/timer/timer_bloc.dart';
import '../../ui/screens/account/user_account_screen.dart';
import '../../ui/screens/profile/profile_screen.dart';
import '../../ui/screens/register/register_screen.dart';
import '../../ui/screens/otp/otp_screen.dart';
import '../../ui/screens/password/password_screen.dart';
import '../../ui/screens/username/username_screen.dart';
import '../../ui/screens/subscribe/subscribe_screen.dart';
import '../../ui/screens/tabs/tabs_navigator.dart';
import '../../ui/screens/welcome/welcome_screen.dart';

class ScreenFactory {
  static RegisterBloc? _registerBloc;

  static Widget assembleWelcome() {
    return const WelcomeScreen();
  }

  static Widget assembleProfile() {
    return const ProfileScreen();
  }

  static Widget assembleRegister() {
    final registerBloc = RegisterBloc(repository: RegisterRepository());
    _registerBloc = registerBloc;

    return MultiBlocProvider(
      providers: [
        BlocProvider<RegisterBloc>.value(value: registerBloc),
        BlocProvider(create: (context) => PhoneFieldBloc()),
      ],
      child: const RegisterScreen(),
    );
  }

  static Widget assembleOTP() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RegisterBloc>.value(
          value: _registerBloc!,
        ),
        BlocProvider<TimerBloc>(
          create: (context) => TimerBloc(ticker: const Ticker()),
        ),
      ],
      child: const OTPScreen(),
    );
  }

  static Widget assemblePassw() {
    return const PasswordScreen();
  }

  static Widget assembleMain() {
    return const TabsNavigator();
  }

  static Widget assembleUser() {
    return const UsernameScreen();
  }

  static Widget assembleUserAccount() {
    return const UserAccountScreen();
  }

  static Widget assembleSubscribe() {
    return const SubscribeScreen();
  }
}
