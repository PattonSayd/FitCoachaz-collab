// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fitcoachaz/app/assemble/assemble_module.dart' as _i19;
import 'package:fitcoachaz/data/services/firebase_auth_service.dart' as _i3;
import 'package:fitcoachaz/data/services/firestore_service.dart' as _i4;
import 'package:fitcoachaz/data/storage/sharedPrefs/key_value_store.dart'
    as _i5;
import 'package:fitcoachaz/domain/repositories/account_name_repository.dart'
    as _i11;
import 'package:fitcoachaz/domain/repositories/congratulation_repository.dart'
    as _i12;
import 'package:fitcoachaz/domain/repositories/email_repository.dart' as _i13;
import 'package:fitcoachaz/domain/repositories/main_repository.dart' as _i7;
import 'package:fitcoachaz/domain/repositories/register_repository.dart' as _i8;
import 'package:fitcoachaz/domain/repositories/session_repository.dart' as _i9;
import 'package:fitcoachaz/ui/bloc/account_name/account_name_bloc.dart' as _i16;
import 'package:fitcoachaz/ui/bloc/congratulation/congratulation_bloc.dart'
    as _i17;
import 'package:fitcoachaz/ui/bloc/email/email_bloc.dart' as _i18;
import 'package:fitcoachaz/ui/bloc/main/main_bloc.dart' as _i6;
import 'package:fitcoachaz/ui/bloc/register/register_bloc.dart' as _i14;
import 'package:fitcoachaz/ui/bloc/session/session_bloc.dart' as _i15;
import 'package:fitcoachaz/ui/bloc/timer/timer_bloc.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final assembleModule = _$AssembleModule();
    gh.factory<_i3.FirebaseAuthService>(
        () => assembleModule.providerFirebaseAuthService());
    gh.factory<_i4.FirestoreService>(
        () => assembleModule.providerFirestoreService());
    await gh.singletonAsync<_i5.KeyValueStore>(
      () => assembleModule.providerKeyValueStore(),
      preResolve: true,
    );
    gh.lazySingleton<_i6.MainBloc>(
        () => assembleModule.providerMainBloc(gh<_i7.MainRepository>()));
    gh.factory<_i8.RegisterRepository>(
        () => assembleModule.providerRegisterRepo(
              gh<_i5.KeyValueStore>(),
              gh<_i4.FirestoreService>(),
              gh<_i3.FirebaseAuthService>(),
            ));
    gh.factory<_i9.SessionRepository>(() => assembleModule.providerSessionRepo(
          gh<_i5.KeyValueStore>(),
          gh<_i4.FirestoreService>(),
          gh<_i3.FirebaseAuthService>(),
        ));
    gh.factory<_i10.Ticker>(() => assembleModule.providerTicker());
    gh.factory<_i10.TimerBloc>(
        () => assembleModule.providerTimerBloc(gh<_i10.Ticker>()));
    gh.factory<_i11.AccountNameRepository>(
        () => assembleModule.providerAccountNameRepository(
              gh<_i5.KeyValueStore>(),
              gh<_i4.FirestoreService>(),
            ));
    gh.factory<_i12.CongratulationRepository>(
        () => assembleModule.providerCongratulationRepository(
              gh<_i5.KeyValueStore>(),
              gh<_i4.FirestoreService>(),
            ));
    gh.factory<_i13.EmailRepository>(
        () => assembleModule.providerEmailRepository(
              gh<_i5.KeyValueStore>(),
              gh<_i4.FirestoreService>(),
            ));
    gh.factory<_i14.RegisterBloc>(() =>
        assembleModule.providerRegisterBloc(gh<_i8.RegisterRepository>()));
    gh.singleton<_i15.SessionBloc>(
        assembleModule.providerSessionBloc(gh<_i9.SessionRepository>()));
    gh.factory<_i16.AccountNameBloc>(() => assembleModule
        .provideerAccountNameBloc(gh<_i11.AccountNameRepository>()));
    gh.factory<_i17.CongratulationBloc>(() => assembleModule
        .providerCongratulationBloc(gh<_i12.CongratulationRepository>()));
    gh.factory<_i18.EmailBloc>(
        () => assembleModule.providerEmailBloc(gh<_i13.EmailRepository>()));
    return this;
  }
}

class _$AssembleModule extends _i19.AssembleModule {}
