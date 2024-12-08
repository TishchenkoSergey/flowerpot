import 'package:domain/models/models.dart';

abstract class CreateGameSessionUseCase {
  Future<SessionModel> execute({
    required GameParametersModel parameters,
    required SessionStatus status,
    required Duration startGameTime,
  });
}
