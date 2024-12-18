//@GeneratedMicroModule;DataPackageModule;package:data/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:data/di/injection.dart' as _i237;
import 'package:data/repository/game_activity_repository_impl.dart' as _i426;
import 'package:data/repository/game_parameters_repository_impl.dart' as _i411;
import 'package:data/repository/game_session_repository_impl.dart' as _i798;
import 'package:data/repository/game_start_time_repository_impl.dart' as _i112;
import 'package:data/repository/game_status_repository_impl.dart' as _i1026;
import 'package:domain/domain.dart' as _i494;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

class DataPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) async {
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs(),
      preResolve: true,
    );
    gh.factory<_i494.GameParametersRepository>(() =>
        _i411.GameParametersRepositoryImpl(gh<_i460.SharedPreferences>()));
    gh.factory<_i494.GameStartTimeRepository>(
        () => _i112.GameStartTimeRepositoryImpl(gh<_i460.SharedPreferences>()));
    gh.factory<_i494.GameStatusRepository>(
        () => _i1026.GameStatusRepositoryImpl(gh<_i460.SharedPreferences>()));
    gh.factory<_i494.GameActivityRepository>(
        () => _i426.GameActivityRepositoryImpl(gh<_i460.SharedPreferences>()));
    gh.factory<_i494.SessionRepository>(() => _i798.GameSessionRepositoryImpl(
          gh<_i460.SharedPreferences>(),
          gh<_i494.GameParametersRepository>(),
          gh<_i494.GameStatusRepository>(),
          gh<_i494.GameStartTimeRepository>(),
          gh<_i494.GameActivityRepository>(),
        ));
  }
}

class _$RegisterModule extends _i237.RegisterModule {}
