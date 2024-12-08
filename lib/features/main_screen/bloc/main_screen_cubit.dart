import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'main_screen_state.dart';

part 'main_screen_cubit.freezed.dart';

class MainScreenCubit extends Cubit<MainScreenState> {
  MainScreenCubit({
    required this.createGameSessionUseCase,
    required this.getGameParametersUseCases,
    required this.getAvailabilityOfSessionsUseCase,
  }) : super(const MainScreenState()) {
    init();
  }

  final GetGameParametersUseCases getGameParametersUseCases;
  final CreateGameSessionUseCase createGameSessionUseCase;
  final GetAvailabilityOfSessionsUseCase getAvailabilityOfSessionsUseCase;

  Future<void> init() async {
    final parameters = getGameParametersUseCases.execute();
    await _getAvailabilityOfContinue();
    emit(state.copyWith(
      parameters: parameters,
    ));
  }

  Future<void> setSession() async {
    final now = DateTime.now();
    final duration = Duration(
      hours: now.hour,
      minutes: now.minute,
      seconds: now.second,
    );

    await createGameSessionUseCase.execute(
      parameters: state.parameters!,
      status: SessionStatus.init,
      startGameTime: duration,
    );
  }

  Future<void> continueSession() async {

  }

  Future<void> _getAvailabilityOfContinue() async {
    final availability = await getAvailabilityOfSessionsUseCase.execute();
    emit(state.copyWith(continueAvailability: availability));
  }
}
