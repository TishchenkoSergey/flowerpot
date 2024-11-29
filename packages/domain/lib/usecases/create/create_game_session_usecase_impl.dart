import 'package:injectable/injectable.dart';

import 'package:domain/repository/repository.dart';
import 'package:domain/models/models.dart';

import 'create_game_session_usecase.dart';

import '../get/get_game_parameters_usecases.dart';

@Injectable(as: CreateGameSessionUseCase)
class CreateGameSessionImpl implements CreateGameSessionUseCase {
  CreateGameSessionImpl(
    this.sessionRepository,
    this.getGameParametersUseCases,
  );

  final SessionRepository sessionRepository;
  final GetGameParametersUseCases getGameParametersUseCases;

  @override
  Future<SessionModel> execute({
    required FlowerpotParametersModel parameters,
  }) async {
    final parameters = getGameParametersUseCases.execute();
    final now = DateTime.now();
    final duration = Duration(
      hours: now.hour,
      minutes: now.minute,
      seconds: now.second,
    );

    final session = await sessionRepository.createSession(
      SessionModel(
        id: 1,
        parameters: parameters,
        status: SessionStatus.init,
        startGameTime: duration,
      ),
    );

    return session;
  }
}
