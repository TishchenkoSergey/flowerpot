import 'package:domain/models/models.dart';

abstract interface class SessionRepository {
  Future<SessionModel> setupSession(BaseSessionModel session);

  Future<SessionModel> getLastSession();
}
