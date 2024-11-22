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
    required FlowerpotParamsModel params,
  }) async {
    final session = await sessionRepository.createSession(
      SessionModel(
        id: 1,
        params: params,
        status: SessionStatus.init,
      ),
    );

    return session;
  }
}
