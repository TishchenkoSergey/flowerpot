import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

part 'game_play_state.dart';

part 'game_play_cubit.freezed.dart';

class GamePlayCubit extends Cubit<GamePlayState> {
  GamePlayCubit({
    required this.getGameParametersUseCases,
    required this.getCalculatedParametersUsecase,
    required this.updateGameSessionUsecase,
    required this.getSessionStatusUsecase,
  }) : super(const GamePlayState()) {
    init();
  }

  final GetGameParametersUseCases getGameParametersUseCases;
  final UpdateGameSessionUsecase updateGameSessionUsecase;
  final GetCalculatedParametersUsecase getCalculatedParametersUsecase;
  final GetSessionStatusUsecase getSessionStatusUsecase;

  bool inRange(int value) => value > 0 && value < 100;

  Future<void> init() async {
    final status = await getSessionStatusUsecase.execute();
    final parameters = status.value == 'running'
        ? await getCalculatedParametersUsecase.execute()
        : getGameParametersUseCases.execute();
    emit(state.copyWith(
      parameters: parameters,
      status: status,
    ));
    await updateParameters();
  }

  Future<void> updateParameters() async {
    if (state.status.value == 'running') {
      Timer.periodic(
        const Duration(seconds: 1),
        (Timer timer) async {
          final parameters = await getCalculatedParametersUsecase.execute();
          if (inRange(parameters.water) ||
              inRange(parameters.light) ||
              inRange(parameters.fertilizer)) {
            emit(state.copyWith(
              parameters: parameters,
            ));
          } else {
            timer.cancel();
            emit(state.copyWith(
              parameters: parameters,
              status: SessionStatus.complete,
            ));
            await updateGameSessionUsecase.execute(
              status: SessionStatus.complete,
            );
          }
        },
      );
    }
  }

  Future<void> setupGame() async {
    final now = DateTime.now();
    final duration = Duration(
      days: now.day,
      hours: now.hour,
      minutes: now.minute,
      seconds: now.second,
    );

    await updateGameSessionUsecase.execute(
      status: SessionStatus.running,
      startGameTime: duration,
    );
    emit(state.copyWith(
      status: SessionStatus.running,
    ));
    await updateParameters();
  }
}
