import 'package:fitcoachaz/ui/bloc/account_name/account_name_bloc.dart';
import 'package:fitcoachaz/ui/bloc/body_parameters/body_parameters_bloc.dart';
import 'package:fitcoachaz/ui/bloc/category/category_bloc.dart';
import 'package:fitcoachaz/ui/bloc/congratulation/congratulation_bloc.dart';
import 'package:fitcoachaz/ui/bloc/search/search_bloc.dart';
import 'package:fitcoachaz/ui/screens/body_parameters/body_parameters_screen.dart';
import 'package:fitcoachaz/ui/screens/email/email_sent_successful_screen.dart';
import 'package:fitcoachaz/ui/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/coach.dart';
import '../../ui/bloc/email/email_bloc.dart';
import '../../ui/bloc/register/register_bloc.dart';
import '../../ui/bloc/timer/timer_bloc.dart';
import '../../ui/screens/category.dart/category_screen.dart';
import '../../ui/screens/congratulation/congratulation_screen.dart';
import '../../ui/screens/notification/notification_screen.dart';
import '../../ui/screens/profile/profile_screen.dart';
import '../../ui/screens/register/register_screen.dart';
import '../../ui/screens/otp/otp_screen.dart';

import '../../ui/screens/see_all/see_all_screen.dart';
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
    return BlocProvider<RegisterBloc>(
      create: (_) => assemble.register,
      child: const RegisterScreen(),
    );
  }

  static Widget assembleOTP({
    required final String phoneNumber,
    required final String verificationId,
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
    return const TabsNavigator();
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

  static Widget assembleSubscribe({required final Coach coach}) {
    return SubscribeScreen(coach: coach);
  }

  static Widget assembleSplash() {
    return const SplashScreen();
  }

  static Widget assembleMain() {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: assemble.main,
        ),
        BlocProvider(
          create: (context) => assemble.search,
        ),
      ],
      child: const MainScreen(),
    );
  }

  static Widget assembleSeeAll({required final List<Coach> coach}) {
    return SeeAllScreen(coach: coach);
  }

  static Widget assembleNotification() {
    return const NotificationScreen();
  }

  static Widget assembleCategory({required final String sport}) {
    return BlocProvider<CategoryBloc>(
      lazy: false,
      create: (context) => assemble.category..add(CategoryEvent.fetch(sport)),
      child: const CategoryScreen(),
    );
  }

  static Widget assembleSendEmailSuccess({required String email}) {
    return EmailSentSuccessfulScreen(
      email: email,
    );
  }

  static Widget assembleBodyParameters() {
    return BlocProvider<BodyParametersBloc>(
      create: (context) => assemble.bodyParam,
      child: const BodyParametersScreen(),
    );
  }
}
