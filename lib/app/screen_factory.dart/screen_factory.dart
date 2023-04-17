import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fitcoachaz/ui/bloc/network_connectivity/network_connectivity_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../ui/bloc/register/register_bloc.dart';
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
  ScreenFactory._();

  static final RegisterBloc regBloc = RegisterBloc();

  static Widget assembleWelcome() {
    return const WelcomeScreen();
  }

  static Widget assembleProfile() {
    return const ProfileScreen();
  }

  static Widget assembleLogin() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => regBloc),
        BlocProvider(
          create: (context) => NetworkConnectivityCubit(
            connectivity: Connectivity(),
          ),
        ),
      ],
      child: const RegisterScreen(),
    );
  }

  static Widget assembleOTP() {
    return BlocProvider.value(
      value: regBloc,
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
