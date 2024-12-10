import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:domain/domain.dart';

@Injectable(as: GameStatusRepository)
class GameStatusRepositoryImpl implements GameStatusRepository {
  GameStatusRepositoryImpl(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  static const _sessionStatus = 'sessionStatus';

  @override
  SessionStatus getSessionStatus() {
    final status = sharedPreferences.getString(_sessionStatus);
    if (status == null) {
      return SessionStatus.init;
    }
    return SessionStatus.fromValue(status)!;
  }

  @override
  Future<SessionStatus> setSessionStatus({
    required SessionStatus status,
  }) async {
    await sharedPreferences.setString(_sessionStatus, status.value);
    return status;
  }
}
