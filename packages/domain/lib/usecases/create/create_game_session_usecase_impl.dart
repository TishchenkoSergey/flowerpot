import 'package:injectable/injectable.dart';

import 'package:domain/repository/repository.dart';
import 'package:domain/models/models.dart';

import 'create_game_session_usecase.dart';

@Injectable(as: CreateGameSessionUseCase)
class CreateGameSessionImpl implements CreateGameSessionUseCase {
  CreateGameSessionImpl(
    this.sessionRepository,
  );

  final SessionRepository sessionRepository;

  @override
  Future<SessionModel> execute({
    required GameParametersModel parameters,
    required SessionStatus status,
    required Duration startGameTime,
  }) async {

    final session = await sessionRepository.setupSession(
      session: SessionModel(
        parameters: parameters,
        status: status,
        startGameTime: startGameTime,
      ),
    );

    return session;
  }
}
