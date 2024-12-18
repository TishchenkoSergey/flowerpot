import 'package:injectable/injectable.dart';

import 'package:domain/domain.dart';

import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: SessionRepository)
class GameSessionRepositoryImpl implements SessionRepository {
  GameSessionRepositoryImpl(
    this.sharedPreferences,
    this.gameParametersRepository,
    this.gameStatusRepository,
    this.gameStartTimeRepository,
    this.gameActivityRepository,
  );

  final SharedPreferences sharedPreferences;
  final GameParametersRepository gameParametersRepository;
  final GameStatusRepository gameStatusRepository;
  final GameStartTimeRepository gameStartTimeRepository;
  final GameActivityRepository gameActivityRepository;

  @override
  Future<SessionModel> setupSession({
    required BaseSessionModel session,
    GameTypeModel type = GameTypeModel.active,
  }) async {
    final status = await gameStatusRepository.setSessionStatus(status: session.status!);
    final startGame = await gameStartTimeRepository.setStartGame(time: session.startGameTime!);
    final parameters = GameParametersModel(
      water: await gameParametersRepository.setWaterParameter(water: session.parameters!.water, type: type),
      light: await gameParametersRepository.setLightParameter(light: session.parameters!.light, type: type),
      fertilizer:
          await gameParametersRepository.setFertilizerParameter(fertilizer: session.parameters!.fertilizer, type: type),
    );

    return SessionModel(
      status: status,
      parameters: parameters,
      startGameTime: startGame,
    );
  }

  @override
  Future<SessionModel> updateSession({
    SessionStatus? status,
    GameParametersModel? parameters,
    Duration? startGameTime,
    GameTypeModel type = GameTypeModel.active,
  }) async {
    final session = await getLastSession();
    final status = await gameStatusRepository.setSessionStatus(status: session.status);
    final startGame = await gameStartTimeRepository.setStartGame(time: startGameTime ?? session.startGameTime);
    final newParameters = parameters == null
        ? session.parameters
        : GameParametersModel(
            water: await gameParametersRepository.setWaterParameter(
              water: parameters.water,
              type: type,
            ),
            light: await gameParametersRepository.setLightParameter(
              light: parameters.light,
              type: type,
            ),
            fertilizer: await gameParametersRepository.setFertilizerParameter(
              fertilizer: parameters.fertilizer,
              type: type,
            ),
          );

    return SessionModel(
      status: status,
      parameters: newParameters,
      startGameTime: startGame,
    );
  }

  @override
  Future<SessionModel> getLastSession({
    GameTypeModel type = GameTypeModel.active,
  }) async {
    final sessionStatus = gameStatusRepository.getSessionStatus();
    final startGame = gameStartTimeRepository.getStartGame();
    final parameters = GameParametersModel(
      water: gameParametersRepository.getWaterParameter(type: type),
      light: gameParametersRepository.getLightParameter(type: type),
      fertilizer: gameParametersRepository.getFertilizerParameter(type: type),
    );

    return SessionModel(
      status: sessionStatus,
      parameters: parameters,
      startGameTime: startGame,
    );
  }

  @override
  Future<bool> markActiveSession(bool sessionMark) {
    return gameActivityRepository.setSessionActivity(sessionMark);
  }
}
