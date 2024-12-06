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
  );

  final SharedPreferences sharedPreferences;
  final GameParametersRepository gameParametersRepository;
  final GameStatusRepository gameStatusRepository;
  final GameStartTimeRepository gameStartTimeRepository;

  @override
  Future<SessionModel> setupSession(BaseSessionModel session) async {
    final status = await gameStatusRepository.setSessionStatus(status: session.status!);
    final startGame = await gameStartTimeRepository.setStartGame(time: session.startGameTime!);
    final parameters = GameParametersModel(
      water: await gameParametersRepository.setWaterParameter(water: session.parameters!.water),
      light: await gameParametersRepository.setLightParameter(light: session.parameters!.light),
      fertilizer: await gameParametersRepository.setFertilizerParameter(fertilizer: session.parameters!.fertilizer),
    );

    return SessionModel(
      status: status,
      parameters: parameters,
      startGameTime: startGame,
    );
  }

  @override
  Future<SessionModel> getLastSession() async {
    final sessionStatus = gameStatusRepository.getSessionStatus();
    final startGame = gameStartTimeRepository.getStartGame();
    final parameters = GameParametersModel(
      water: gameParametersRepository.getWaterParameter(),
      light: gameParametersRepository.getLightParameter(),
      fertilizer: gameParametersRepository.getFertilizerParameter(),
    );

    return SessionModel(
      status: sessionStatus,
      parameters: parameters,
      startGameTime: startGame,
    );
  }
}
