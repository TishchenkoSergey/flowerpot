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
    _getAvailabilityOfContinue();
  }

  final GetGameParametersUseCases getGameParametersUseCases;
  final CreateGameSessionUseCase createGameSessionUseCase;
  final GetAvailabilityOfSessionsUseCase getAvailabilityOfSessionsUseCase;

  Future<void> setNewSession() async {
    final parameters = getGameParametersUseCases.execute();

    await createGameSessionUseCase.execute(
      parameters: parameters,
      status: SessionStatus.init,
      startGameTime: Duration.zero,
    );
  }

  Future<void> _getAvailabilityOfContinue() async {
    final availability = await getAvailabilityOfSessionsUseCase.execute();
    emit(state.copyWith(continueAvailability: availability));
  }
}
