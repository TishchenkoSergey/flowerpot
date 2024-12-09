import 'package:domain/models/models.dart';

abstract class UpdateGameSessionUsecase {
  Future<SessionModel> execute({
    GameParametersModel? parameters,
    SessionStatus? status,
    Duration? startGameTime,
  });
}
