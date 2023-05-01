import 'package:fitcoachaz/data/storage/sharedPrefs/key_value_store.dart';
import 'package:fitcoachaz/data/storage/sharedPrefs/shared_prefs.dart';
import 'package:fitcoachaz/domain/repositories/email/email_repository.dart';
import 'package:fitcoachaz/domain/repositories/register/register_repository.dart';
import 'package:fitcoachaz/ui/bloc/account_name/account_name_bloc.dart';
import 'package:fitcoachaz/ui/bloc/email/email_bloc.dart';
import 'package:fitcoachaz/ui/bloc/otp/otp_bloc.dart';
import 'package:fitcoachaz/ui/bloc/register/register_bloc.dart';
import 'package:fitcoachaz/ui/bloc/timer/timer_bloc.dart';
import 'package:fitcoachaz/ui/formz/phone_field/phone_field_bloc.dart';
import 'package:get_it/get_it.dart';

import 'domain/repositories/account_name/account_name_repository.dart';

final getIt = GetIt.instance;
const locator = ServiceLocator._();

void configureDependencies() {
  getIt.registerFactory<RegisterRepository>(
      () => RegisterRepository(sharedPrefs: locator._sharedPrefs));
  getIt.registerFactory<Ticker>(() => const Ticker());
  getIt.registerSingletonAsync<KeyValueStore>(() async {
    final sharedPrefs = SharedPrefs();
    await sharedPrefs.init();
    return sharedPrefs;
  });
  getIt.registerLazySingleton<RegisterBloc>(() => RegisterBloc(
        repository: locator._registerRepo,
      ));
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
}

class ServiceLocator {
  RegisterRepository get _registerRepo => getIt.get<RegisterRepository>();
  RegisterBloc get register => getIt.get<RegisterBloc>();
  EmailRepository get _emailRepo => getIt.get<EmailRepository>();
  Ticker get _ticker => getIt.get<Ticker>();
  OtpBloc get otp => getIt.get<OtpBloc>();
  PhoneFieldBloc get phoneField => getIt.get<PhoneFieldBloc>();
  TimerBloc get timer => getIt.get<TimerBloc>();
  EmailBloc get email => getIt.get<EmailBloc>();
  KeyValueStore get _sharedPrefs => getIt.get<KeyValueStore>();
  AccountNameBloc get accountName => getIt.get<AccountNameBloc>();
  AccountNameRepository get _accountNameRepo =>
      getIt.get<AccountNameRepository>();

  const ServiceLocator._();
}
