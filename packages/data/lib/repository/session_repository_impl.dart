import 'package:injectable/injectable.dart';

import 'package:domain/domain.dart';

import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: SessionRepository)
class SessionRepositoryImpl implements SessionRepository {
  SessionRepositoryImpl(
    this.gameParametersRepository,
    this.sharedPreferences,
    this.gameStatusRepository,
    this.getGameParametersUseCases,
    this.gameStartTimeRepository,
    this.updateGameParametersUsecases,
  );

  final GameParametersRepository gameParametersRepository;
  final SharedPreferences sharedPreferences;
  final GameStatusRepository gameStatusRepository;
  final GameStartTimeRepository gameStartTimeRepository;
  final GetGameParametersUseCases getGameParametersUseCases;
  final UpdateGameParametersUsecases updateGameParametersUsecases;

  @override
  Future<SessionModel> createSession(BaseSessionModel session) async {
    final status = await gameStatusRepository.setSessionStatus(status: session.status!);
    final startGame = await gameStartTimeRepository.setStartGame(time: session.startGameTime);
    final parameters = FlowerpotParametersModel(
      water: await gameParametersRepository.setWaterParameter(session.parameters!.water),
      light: await gameParametersRepository.setLightParameter(session.parameters!.light),
      fertilizer: await gameParametersRepository.setFertilizerParameter(session.parameters!.fertilizer),
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
    final parameters = FlowerpotParametersModel(
      water: gameParametersRepository.getWaterParameter(),
      light: gameParametersRepository.getLightParameter(),
      fertilizer: gameParametersRepository.getFertilizerParameter(),
    );

    return SessionModel(
      status: sessionStatus,
      parameters: parameters,
      startGameTime: startGame!,
    );
  }

  @override
  Future<void> changeSessionStatus(SessionStatus status) async {
    await gameStatusRepository.setSessionStatus(status: status);
  }
}
