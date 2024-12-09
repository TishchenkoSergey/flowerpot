import 'package:domain/models/models.dart';

abstract interface class SessionRepository {
  Future<SessionModel> setupSession(BaseSessionModel session);

  Future<SessionModel> updateSession({
    SessionStatus? status,
    GameParametersModel? parameters,
    Duration? startGameTime,
  });

  Future<SessionModel> getLastSession();
}
