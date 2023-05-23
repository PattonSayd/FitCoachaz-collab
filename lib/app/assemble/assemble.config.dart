// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:fitcoachaz/app/assemble/assemble_module.dart' as _i23;
import 'package:fitcoachaz/data/services/firebase_auth_service.dart' as _i4;
import 'package:fitcoachaz/data/services/firebase_storage_service.dart' as _i5;
import 'package:fitcoachaz/data/services/firestore_service.dart' as _i6;
import 'package:fitcoachaz/data/storage/sharedPrefs/key_value_store.dart'
    as _i7;
import 'package:fitcoachaz/domain/repositories/account_name_repository.dart'
    as _i12;
import 'package:fitcoachaz/domain/repositories/category_reposytory.dart'
    as _i13;
import 'package:fitcoachaz/domain/repositories/congratulation_repository.dart'
    as _i14;
import 'package:fitcoachaz/domain/repositories/email_repository.dart' as _i15;
import 'package:fitcoachaz/domain/repositories/main_repository.dart' as _i8;
import 'package:fitcoachaz/domain/repositories/register_repository.dart' as _i9;
import 'package:fitcoachaz/domain/repositories/session_repository.dart' as _i10;
import 'package:fitcoachaz/ui/bloc/account_name/account_name_bloc.dart' as _i19;
import 'package:fitcoachaz/ui/bloc/bloc/category_bloc.dart' as _i20;
import 'package:fitcoachaz/ui/bloc/congratulation/congratulation_bloc.dart'
    as _i21;
import 'package:fitcoachaz/ui/bloc/email/email_bloc.dart' as _i22;
import 'package:fitcoachaz/ui/bloc/main/main_bloc.dart' as _i16;
import 'package:fitcoachaz/ui/bloc/register/register_bloc.dart' as _i17;
import 'package:fitcoachaz/ui/bloc/session/session_bloc.dart' as _i18;
import 'package:fitcoachaz/ui/bloc/timer/timer_bloc.dart' as _i11;
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
    gh.lazySingleton<_i3.FirebaseAuth>(() => assembleModule.providerFirebase());
    gh.factory<_i4.FirebaseAuthService>(
        () => assembleModule.providerFirebaseAuthService());
    gh.factory<_i5.FirebaseStorageService>(
        () => assembleModule.providerFirebaseStorageService());
    gh.factory<_i6.FirestoreService>(
        () => assembleModule.providerFirestoreService());
    await gh.singletonAsync<_i7.KeyValueStore>(
      () => assembleModule.providerKeyValueStore(),
      preResolve: true,
    );
    gh.factory<_i8.MainRepository>(() => assembleModule.providerMainRepository(
          gh<_i6.FirestoreService>(),
          gh<_i5.FirebaseStorageService>(),
        ));
    gh.factory<_i9.RegisterRepository>(
        () => assembleModule.providerRegisterRepo(
              gh<_i7.KeyValueStore>(),
              gh<_i6.FirestoreService>(),
              gh<_i4.FirebaseAuthService>(),
            ));
    gh.factory<_i10.SessionRepository>(
        () => assembleModule.providerSessionRepository(
              gh<_i7.KeyValueStore>(),
              gh<_i6.FirestoreService>(),
              gh<_i4.FirebaseAuthService>(),
            ));
    gh.factory<_i11.Ticker>(() => assembleModule.providerTicker());
    gh.factory<_i11.TimerBloc>(
        () => assembleModule.providerTimerBloc(gh<_i11.Ticker>()));
    gh.factory<_i12.AccountNameRepository>(
        () => assembleModule.providerAccountNameRepository(
              gh<_i7.KeyValueStore>(),
              gh<_i6.FirestoreService>(),
            ));
    gh.factory<_i13.CategoryRepository>(
        () => assembleModule.providerCategoryRepository(
              gh<_i6.FirestoreService>(),
              gh<_i5.FirebaseStorageService>(),
            ));
    gh.factory<_i14.CongratulationRepository>(
        () => assembleModule.providerCongratulationRepository(
              gh<_i7.KeyValueStore>(),
              gh<_i6.FirestoreService>(),
            ));
    gh.factory<_i15.EmailRepository>(
        () => assembleModule.providerEmailRepository(
              gh<_i7.KeyValueStore>(),
              gh<_i6.FirestoreService>(),
            ));
    gh.lazySingleton<_i16.MainBloc>(
        () => assembleModule.providerMainBloc(gh<_i8.MainRepository>()));
    gh.factory<_i17.RegisterBloc>(() =>
        assembleModule.providerRegisterBloc(gh<_i9.RegisterRepository>()));
    gh.lazySingleton<_i18.SessionBloc>(
        () => assembleModule.providerSessionBloc(gh<_i10.SessionRepository>()));
    gh.factory<_i19.AccountNameBloc>(() => assembleModule
        .provideerAccountNameBloc(gh<_i12.AccountNameRepository>()));
    gh.factory<_i20.CategoryBloc>(() =>
        assembleModule.providerCategoryBloc(gh<_i13.CategoryRepository>()));
    gh.factory<_i21.CongratulationBloc>(() => assembleModule
        .providerCongratulationBloc(gh<_i14.CongratulationRepository>()));
    gh.factory<_i22.EmailBloc>(() => assembleModule.providerEmailBloc(
          gh<_i15.EmailRepository>(),
          gh<_i7.KeyValueStore>(),
        ));
    return this;
  }
}

class _$AssembleModule extends _i23.AssembleModule {}
