import 'package:domain/models/models.dart';

abstract interface class SessionRepository {
  Future<SessionModel> createSession(BaseSessionModel session);

  Future<void> markActiveSession(BaseSessionModel session);
}
