import 'package:fitcoachaz/domain/repositories/register/register_repository.dart';
import 'package:fitcoachaz/ui/bloc/otp/otp_bloc.dart';
import 'package:fitcoachaz/ui/bloc/register/register_bloc.dart';
import 'package:fitcoachaz/ui/bloc/timer/timer_bloc.dart';
import 'package:fitcoachaz/ui/formz/phone_field/phone_field_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
const locator = ServiceLocator._();

void configureDependencies() {
  getIt.registerFactory<RegisterRepository>(() => RegisterRepository());
  getIt.registerFactory<Ticker>(() => const Ticker());
  getIt.registerLazySingleton<RegisterBloc>(
      () => RegisterBloc(repository: getIt.get<RegisterRepository>()));

  getIt
      .registerFactory<TimerBloc>(() => TimerBloc(ticker: getIt.get<Ticker>()));
  getIt.registerLazySingleton<OtpBloc>(() => OtpBloc());
  getIt.registerFactory<PhoneFieldBloc>(() => PhoneFieldBloc());
}

class ServiceLocator {
  RegisterBloc get register => getIt.get<RegisterBloc>();
  OtpBloc get otp => getIt.get<OtpBloc>();
  PhoneFieldBloc get phoneField => getIt.get<PhoneFieldBloc>();
  TimerBloc get timer => getIt.get<TimerBloc>();

  const ServiceLocator._();
}
