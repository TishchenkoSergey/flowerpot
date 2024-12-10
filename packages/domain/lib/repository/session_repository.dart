import 'package:domain/models/models.dart';

abstract interface class SessionRepository {
  Future<SessionModel> setupSession({
    required BaseSessionModel session,
    GameTypeModel type = GameTypeModel.active,
  });

  Future<SessionModel> updateSession({
    SessionStatus? status,
    GameParametersModel? parameters,
    Duration? startGameTime,
    GameTypeModel type = GameTypeModel.active,
  });

  Future<SessionModel> getLastSession({
    GameTypeModel type = GameTypeModel.active,
  });
}
