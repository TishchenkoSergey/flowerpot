import 'package:domain/domain.dart';

abstract class GameStatusRepository {
  SessionStatus getSessionStatus();

  Future<SessionStatus> setSessionStatus({
    required SessionStatus status,
  });
}
