import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'game_play_state.dart';

part 'game_play_cubit.freezed.dart';

class GamePlayCubit extends Cubit<GamePlayState> {
  GamePlayCubit({
    required this.getGameParametersUseCases,
    required this.updateGameSessionUsecase,
    required this.getGameStartTimeUsecase,
    required this.getSessionStatusUsecase,
  }) : super(const GamePlayState()) {
    init();
  }

  final GetGameParametersUseCases getGameParametersUseCases;
  final UpdateGameSessionUsecase updateGameSessionUsecase;
  final GetGameStartTimeUsecase getGameStartTimeUsecase;
  final GetSessionStatusUsecase getSessionStatusUsecase;

  Future<void> init() async {
    final status = await getSessionStatusUsecase.execute();
    final parameters = getGameParametersUseCases.execute();
    emit(state.copyWith(
      parameters: parameters,
      status: status,
    ));
  }

  Future<void> setupGame() async {
    final now = DateTime.now();
    final duration = Duration(
      days: now.day,
      hours: now.hour,
      minutes: now.minute,
      seconds: now.second,
      milliseconds: now.millisecond,
    );

    await updateGameSessionUsecase.execute(
      parameters: state.parameters,
      status: SessionStatus.running,
      startGameTime: duration,
    );
    emit(state.copyWith(status: SessionStatus.running));
  }
}
