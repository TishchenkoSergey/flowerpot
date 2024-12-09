import 'package:injectable/injectable.dart';

import 'package:domain/repository/repository.dart';
import 'package:domain/models/models.dart';

import 'update_game_session_usecase.dart';

@Injectable(as: UpdateGameSessionUsecase)
class UpdateGameSessionUsecaseImpl implements UpdateGameSessionUsecase {
  UpdateGameSessionUsecaseImpl(
    @factoryParam this.type,
    this.sessionRepository,
    this.gameParametersRepository,
    this.gameStatusRepository,
    this.gameStartTimeRepository,
  );

  final SessionRepository sessionRepository;
  final GameParametersRepository gameParametersRepository;
  final GameStatusRepository gameStatusRepository;
  final GameStartTimeRepository gameStartTimeRepository;
  final GameTypeModel type;

  @override
  Future<SessionModel> execute({
    GameParametersModel? parameters,
    SessionStatus? status,
    Duration? startGameTime,
  }) async {
    if (status != null) {
      await gameStatusRepository.setSessionStatus(status: status);
    }
    if (startGameTime != null) {
      await gameStartTimeRepository.setStartGame(time: startGameTime);
    }
    if (parameters != null) {
      await gameParametersRepository.setWaterParameter(
        water: parameters.water,
        type: type,
      );
      await gameParametersRepository.setLightParameter(
        light: parameters.light,
        type: type,
      );
      await gameParametersRepository.setFertilizerParameter(
        fertilizer: parameters.fertilizer,
        type: type,
      );
    }

    return sessionRepository.getLastSession();
  }
}
