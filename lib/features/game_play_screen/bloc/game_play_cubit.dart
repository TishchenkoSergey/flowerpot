import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:domain/domain.dart';

import '../../../utils/utils.dart';

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
    _countdownTimer.initialDuration = const Duration(days: 1);
    await _setupActualSession();
    await _start();
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
    await _start();
  }

  Future<void> _setupActualSession() async {
    final parameters = await getCalculatedParametersUsecase.execute();
    if (parameters.allInRange()) {
      final status = await getSessionStatusUsecase.execute();
      _getDeviated(parameters);
      emit(state.copyWith(
        parameters: parameters,
        status: status,
      ));
    } else {
      await _setNewStatus(SessionStatus.complete);
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

  void _getDeviated(GameParametersModel parameters) {
    final maxDeviation = parameters.getMaxDeviation();

    if (maxDeviation <= 15) {
      emit(state.copyWith(backgroundStatus: BackgroundStatus.normal));
    } else if (maxDeviation <= 30) {
      emit(state.copyWith(backgroundStatus: BackgroundStatus.flabby));
    } else if (maxDeviation <= 40) {
      emit(state.copyWith(backgroundStatus: BackgroundStatus.dry));
    } else {
      emit(state.copyWith(backgroundStatus: BackgroundStatus.rotten));
    }
  }

  late final CountdownTimerUtil _countdownTimer = CountdownTimerUtil(
    onTick: _updateRemainingTime,
    onComplete: _onTimeEnd,
  );

  Future<void> _updateRemainingTime(Duration duration) async {
    final parameters = await getCalculatedParametersUsecase.execute();
    if (parameters.allInRange()) {
      _getDeviated(parameters);
      //TODO: stop emit when switching to another page
      emit(state.copyWith(
        parameters: parameters,
      ));
    } else {
      await _onTimeEnd();
    }
  }

  Future<void> _onTimeEnd() async {
    await _setNewStatus(SessionStatus.complete);
    await _finished();
  }

  Future<void> _start() async {
    _countdownTimer.start();
  }

  Future<void> _finished() async {
    _countdownTimer.stop();
  }
}
