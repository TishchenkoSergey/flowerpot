import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:domain/domain.dart';

@Injectable(as: GameStartTimeRepository)
class GameStartTimeRepositoryImpl implements GameStartTimeRepository {
  GameStartTimeRepositoryImpl(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  static const _sessionStartGame = 'sessionStartGame';

  @override
  Duration getStartGame() {
    final time = sharedPreferences.getInt(_sessionStartGame);
    if (time == null) {
      final now = DateTime.now();
      return Duration(
        microseconds: now.microsecond,
      );
    }
    return Duration(milliseconds: time);
  }

  @override
  Future<Duration> setStartGame({
    required Duration time,
  }) async {
    await sharedPreferences.setInt(_sessionStartGame, time.inMilliseconds);
    return time;
  }
}
