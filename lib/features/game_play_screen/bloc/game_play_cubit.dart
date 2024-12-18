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
    required this.createGameSessionUseCase,
    required this.updateAvailabilityOfSessionsUsecase,
  }) : super(const GamePlayState()) {
    _init();
  }

  final GetGameParametersUseCases getGameParametersUseCases;
  final UpdateGameSessionUsecase updateGameSessionUsecase;
  final GetCalculatedParametersUsecase getCalculatedParametersUsecase;
  final GetSessionStatusUsecase getSessionStatusUsecase;
  final CreateGameSessionUseCase createGameSessionUseCase;
  final UpdateAvailabilityOfSessionsUsecase updateAvailabilityOfSessionsUsecase;

  Future<void> _init() async {
    await _setupActualSession();
    await _updateParameters();
  }

  Future<void> setupGame() async {
    final parameters = getGameParametersUseCases.execute();
    final now = DateTime.now();
    final duration = Duration(
      days: now.day,
      hours: now.hour,
      minutes: now.minute,
      seconds: now.second,
    );
    await createGameSessionUseCase.execute(
      parameters: parameters,
      status: SessionStatus.init,
      startGameTime: duration,
    );
    await _setNewStatus(SessionStatus.running);
    await _updateParameters();
  }

  Future<void> _setupActualSession() async {
    final status = await getSessionStatusUsecase.execute();
    final parameters = status == SessionStatus.running
        ? await getCalculatedParametersUsecase.execute()
        : getGameParametersUseCases.execute();
    if (parameters.allInRange()) {
      emit(state.copyWith(
        parameters: parameters,
        status: status,
      ));
    } else {
      await _setNewStatus(SessionStatus.complete);
    }
  }

  Future<void> _updateParameters() async {
    if (state.status == SessionStatus.running) {
      Timer.periodic(
        const Duration(seconds: 1),
            (Timer timer) async {
          final parameters = await getCalculatedParametersUsecase.execute();
          if (parameters.allInRange()) {
            emit(state.copyWith(
              parameters: parameters,
            ));
          } else {
            timer.cancel();
            await _setNewStatus(SessionStatus.complete);
          }
        },
      );
    }
  }

  Future<void> _setNewStatus(SessionStatus status) async {
    if (status == SessionStatus.complete) {
      await updateAvailabilityOfSessionsUsecase.execute(sessionMark: false);
    }
    await updateGameSessionUsecase.execute(
      status: status,
    );
    emit(state.copyWith(
      status: status,
    ));
  }
}
