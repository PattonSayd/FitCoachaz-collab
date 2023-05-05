import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../ui/bloc/account_name/account_name_bloc.dart';
import '../../ui/bloc/congratulation/congratulation_bloc.dart';
import '../../ui/bloc/email/email_bloc.dart';
import '../../ui/bloc/otp/otp_bloc.dart';
import '../../ui/bloc/register/register_bloc.dart';
import '../../ui/bloc/timer/timer_bloc.dart';
import 'assemble.config.dart';

final getIt = GetIt.I;
const assemble = Assemble._();

@injectableInit
void configureDependencies() => getIt.init(environment: Environment.prod);

class Assemble {
  RegisterBloc get register => getIt.get<RegisterBloc>();
  OtpBloc get otp => getIt.get<OtpBloc>();
  AccountNameBloc get accountName => getIt.get<AccountNameBloc>();
  TimerBloc get timer => getIt.get<TimerBloc>();
  EmailBloc get email => getIt.get<EmailBloc>();
  CongratulationBloc get congrBloc => getIt.get<CongratulationBloc>();

  const Assemble._();
}
