import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:domain/domain.dart';

@Injectable(as: GameStatusRepository)
class GameStatusRepositoryImpl implements GameStatusRepository {
  GameStatusRepositoryImpl(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  static const _sessionStatusKey = 'sessionStatusKey';

  @override
  SessionStatus getSessionStatus() {
    final status = sharedPreferences.getString(_sessionStatusKey);
    if (status == null) {
      return SessionStatus.init;
    }
    return status as SessionStatus;
  }

  @override
  Future<SessionStatus> setSessionStatus({
    required SessionStatus status,
  }) async {
    await sharedPreferences.setString(_sessionStatusKey, status as String);
    return status;
  }
}
