//@GeneratedMicroModule;DomainPackageModule;package:domain/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:domain/domain.dart' as _i494;
import 'package:domain/repository/repository.dart' as _i174;
import 'package:domain/usecases/create/create_game_session_usecase.dart'
    as _i883;
import 'package:domain/usecases/create/create_game_session_usecase_impl.dart'
    as _i1054;
import 'package:domain/usecases/get/get_availability_of_sessions_usecase.dart'
    as _i224;
import 'package:domain/usecases/get/get_availability_of_sessions_usecase_impl.dart'
    as _i577;
import 'package:domain/usecases/get/get_game_parameters_usecases.dart' as _i389;
import 'package:domain/usecases/get/get_game_parameters_usecases_impl.dart'
    as _i2;
import 'package:domain/usecases/update/update_game_parameters_usecases.dart'
    as _i462;
import 'package:domain/usecases/update/update_game_parameters_usecases_impl.dart'
    as _i234;
import 'package:domain/usecases/update/update_session_status_usecase_impl.dart'
    as _i145;
import 'package:injectable/injectable.dart' as _i526;

class DomainPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i224.GetAvailabilityOfSessionsUseCase>(() =>
        _i577.GetAvailabilityOfSessionsUseCaseImpl(
            gh<_i174.SessionRepository>()));
    gh.factory<_i494.UpdateSessionStatusUsecase>(() =>
        _i145.UpdateSessionStatusUsecaseImpl(gh<_i494.SessionRepository>()));
    gh.factory<_i462.UpdateGameParametersUsecases>(() =>
        _i234.UpdateGameParametersUsecase(
            gh<_i174.GameParametersRepository>()));
    gh.factory<_i389.GetGameParametersUseCases>(() =>
        _i2.GetGameParametersUseCasesImpl(
            gh<_i174.GameParametersRepository>()));
    gh.factory<_i883.CreateGameSessionUseCase>(
        () => _i1054.CreateGameSessionImpl(
              gh<_i174.SessionRepository>(),
              gh<_i389.GetGameParametersUseCases>(),
            ));
  }
}
