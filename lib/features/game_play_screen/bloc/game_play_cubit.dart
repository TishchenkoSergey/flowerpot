import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'game_play_state.dart';

part 'game_play_cubit.freezed.dart';

class GamePlayCubit extends Cubit<GamePlayState> {
  GamePlayCubit({
    required this.getGameParametersUseCases,
    required this.createGameSessionUseCase,
  }) : super(const GamePlayState()) {
    init();
  }

  final GetGameParametersUseCases getGameParametersUseCases;
  final CreateGameSessionUseCase createGameSessionUseCase;

  Future<void> init() async {
    final parameters = getGameParametersUseCases.execute();
    emit(state.copyWith(parameters: parameters));
    await setupGame();
  }

  Future<void> setupGame() async {
    final now = DateTime.now();
    final duration = Duration(
      hours: now.hour,
      minutes: now.minute,
      seconds: now.second,
    );

    await createGameSessionUseCase.execute(
      parameters: state.parameters!,
      status: SessionStatus.running,
      startGameTime: duration,
    );
  }
}
