import 'package:fitcoachaz/data/storage/sharedPrefs/key_value_store.dart';
import 'package:fitcoachaz/data/storage/sharedPrefs/shared_prefs.dart';
import 'package:fitcoachaz/domain/repositories/congratulation/congratulation_repository.dart';
import 'package:fitcoachaz/domain/repositories/email/email_repository.dart';
import 'package:fitcoachaz/domain/repositories/register/register_repository.dart';
import 'package:fitcoachaz/ui/bloc/account_name/account_name_bloc.dart';
import 'package:fitcoachaz/ui/bloc/congratulation/congratulation_bloc.dart';
import 'package:fitcoachaz/ui/bloc/email/email_bloc.dart';
import 'package:fitcoachaz/ui/bloc/otp/otp_bloc.dart';
import 'package:fitcoachaz/ui/bloc/register/register_bloc.dart';
import 'package:fitcoachaz/ui/bloc/timer/timer_bloc.dart';
import 'package:fitcoachaz/ui/formz/phone_field/phone_field_bloc.dart';
import 'package:get_it/get_it.dart';

import 'data/repositories/register_repo_imp.dart';
import 'domain/repositories/account_name/account_name_repository.dart';

final getIt = GetIt.instance;
const locator = ServiceLocator._();

void configureDependencies() {
  getIt.registerFactory<RegisterRepository>(
      () => RegisterRepositoryImp(sharedPrefs: locator._sharedPrefs));
  getIt.registerFactory<Ticker>(() => const Ticker());
  getIt.registerSingletonAsync<KeyValueStore>(() async {
    final sharedPrefs = SharedPrefs();
    await sharedPrefs.init();
    return sharedPrefs;
  });
  getIt.registerLazySingleton<RegisterBloc>(
      () => RegisterBloc(repository: locator._registerRepo));
  getIt.registerFactory<TimerBloc>(() => TimerBloc(ticker: locator._ticker));
  getIt.registerLazySingleton<OtpBloc>(() => OtpBloc());
  getIt.registerFactory<PhoneFieldBloc>(() => PhoneFieldBloc());
  getIt.registerFactory<EmailRepository>(
      () => EmailRepository(sharedPrefs: locator._sharedPrefs));
  getIt.registerFactory<EmailBloc>(
      () => EmailBloc(repository: locator._emailRepo));
  getIt.registerFactory<AccountNameRepository>(
      () => AccountNameRepository(sharedPrefs: locator._sharedPrefs));
  getIt.registerFactory<AccountNameBloc>(
      () => AccountNameBloc(repository: locator._accountNameRepo));
  getIt.registerFactory<CongratulationBloc>(
      () => CongratulationBloc(repository: locator._congrRepo));
  getIt.registerFactory<CongratulationRepository>(
      () => CongratulationRepository(sharedPrefs: locator._sharedPrefs));
}

class ServiceLocator {
  RegisterRepository get _registerRepo => getIt.get<RegisterRepository>();

  EmailRepository get _emailRepo => getIt.get<EmailRepository>();
  AccountNameRepository get _accountNameRepo =>
      getIt.get<AccountNameRepository>();
  CongratulationRepository get _congrRepo =>
      getIt.get<CongratulationRepository>();
  RegisterBloc get register => getIt.get<RegisterBloc>();
  OtpBloc get otp => getIt.get<OtpBloc>();
  PhoneFieldBloc get phoneField => getIt.get<PhoneFieldBloc>();
  AccountNameBloc get accountName => getIt.get<AccountNameBloc>();
  TimerBloc get timer => getIt.get<TimerBloc>();
  EmailBloc get email => getIt.get<EmailBloc>();
  Ticker get _ticker => getIt.get<Ticker>();
  KeyValueStore get _sharedPrefs => getIt.get<KeyValueStore>();
  CongratulationBloc get congrBloc => getIt.get<CongratulationBloc>();

  const ServiceLocator._();
}
