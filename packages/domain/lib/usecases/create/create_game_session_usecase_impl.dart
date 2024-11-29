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
    required SessionStatus status,
    required Duration startGameTime,
  }) async {
    final parameters = getGameParametersUseCases.execute();

    final session = await sessionRepository.createSession(
      SessionModel(
        parameters: parameters,
        status: SessionStatus.init,
        startGameTime: startGameTime,
      ),
    );

    await sessionRepository.changeSessionStatus(session.status);

    return session;
  }
}
