import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitcoachaz/ui/screens/body_parameters/body_parameters_screen.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../ui/bloc/account_name/account_name_bloc.dart';
import '../../ui/bloc/body_parameters/body_parameters_bloc.dart';
import '../../ui/bloc/category/category_bloc.dart';
import '../../ui/bloc/congratulation/congratulation_bloc.dart';
import '../../ui/bloc/email/email_bloc.dart';
import '../../ui/bloc/main/main_bloc.dart';
import '../../ui/bloc/register/register_bloc.dart';
import '../../ui/bloc/search/search_bloc.dart';
import '../../ui/bloc/timer/timer_bloc.dart';
import '../../ui/screens/main/appbar_state.dart';
import 'assemble.config.dart';

final getIt = GetIt.I;
const assemble = Assemble._();

@injectableInit
Future<void> configureDependencies() async =>
    getIt.init(environment: Environment.prod);

class Assemble {
  RegisterBloc get register => getIt.get<RegisterBloc>();
  AccountNameBloc get accountName => getIt.get<AccountNameBloc>();
  TimerBloc get timer => getIt.get<TimerBloc>();
  EmailBloc get email => getIt.get<EmailBloc>();
  CongratulationBloc get congratulation => getIt.get<CongratulationBloc>();
  // SessionBloc get session => getIt.get<SessionBloc>();
  MainBloc get main => getIt.get<MainBloc>();
  FirebaseAuth get auth => getIt.get<FirebaseAuth>();
  CategoryBloc get category => getIt.get<CategoryBloc>();
  ShowAppBarState get appbar => getIt.get<ShowAppBarState>();
  SearchBloc get search => getIt.get<SearchBloc>();
  BodyParametersBloc get bodyParam => getIt.get<BodyParametersBloc>();

  const Assemble._();
}
