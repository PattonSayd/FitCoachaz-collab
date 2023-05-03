// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fitcoachaz/app/assemble/assemble_module.dart' as _i16;
import 'package:fitcoachaz/data/services/firestore_service.dart' as _i3;
import 'package:fitcoachaz/data/storage/sharedPrefs/key_value_store.dart'
    as _i4;
import 'package:fitcoachaz/domain/repositories/account_name/account_name_repository.dart'
    as _i9;
import 'package:fitcoachaz/domain/repositories/congratulation/congratulation_repository.dart'
    as _i10;
import 'package:fitcoachaz/domain/repositories/email/email_repository.dart'
    as _i11;
import 'package:fitcoachaz/domain/repositories/register/register_repository.dart'
    as _i7;
import 'package:fitcoachaz/ui/bloc/account_name/account_name_bloc.dart' as _i13;
import 'package:fitcoachaz/ui/bloc/congratulation/congratulation_bloc.dart'
    as _i14;
import 'package:fitcoachaz/ui/bloc/email/email_bloc.dart' as _i15;
import 'package:fitcoachaz/ui/bloc/otp/otp_bloc.dart' as _i5;
import 'package:fitcoachaz/ui/bloc/register/register_bloc.dart' as _i12;
import 'package:fitcoachaz/ui/bloc/timer/timer_bloc.dart' as _i8;
import 'package:fitcoachaz/ui/formz/phone_field/phone_field_bloc.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final assembleModule = _$AssembleModule();
    gh.factory<_i3.FirestoreService>(
        () => assembleModule.providerFirestoreService());
    gh.singleton<_i4.KeyValueStore>(assembleModule.providerKeyValueStore());
    gh.lazySingleton<_i5.OtpBloc>(() => assembleModule.providerOtpBloc());
    gh.factory<_i6.PhoneFieldBloc>(
        () => assembleModule.providerPhoneFieldBloc());
    gh.factory<_i7.RegisterRepository>(
        () => assembleModule.providerRegisterRepo(
              gh<_i4.KeyValueStore>(),
              gh<_i3.FirestoreService>(),
            ));
    gh.factory<_i8.Ticker>(() => assembleModule.providerTicker());
    gh.factory<_i8.TimerBloc>(
        () => assembleModule.providerTimerBloc(gh<_i8.Ticker>()));
    gh.factory<_i9.AccountNameRepository>(() =>
        assembleModule.providerAccountNameRepository(gh<_i4.KeyValueStore>()));
    gh.factory<_i10.CongratulationRepository>(() => assembleModule
        .providerCongratulationRepository(gh<_i4.KeyValueStore>()));
    gh.factory<_i11.EmailRepository>(
        () => assembleModule.providerEmailRepository(gh<_i4.KeyValueStore>()));
    gh.lazySingleton<_i12.RegisterBloc>(() =>
        assembleModule.providerRegisterBloc(gh<_i7.RegisterRepository>()));
    gh.factory<_i13.AccountNameBloc>(() => assembleModule
        .provideerAccountNameBloc(gh<_i9.AccountNameRepository>()));
    gh.factory<_i14.CongratulationBloc>(() => assembleModule
        .providerCongratulationBloc(gh<_i10.CongratulationRepository>()));
    gh.factory<_i15.EmailBloc>(
        () => assembleModule.providerEmailBloc(gh<_i11.EmailRepository>()));
    return this;
  }
}

class _$AssembleModule extends _i16.AssembleModule {}
