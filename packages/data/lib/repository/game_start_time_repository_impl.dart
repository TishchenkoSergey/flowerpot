import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:domain/domain.dart';

@Injectable(as: GameStartTimeRepository)
class GameStartTimeRepositoryImpl implements GameStartTimeRepository {
  GameStartTimeRepositoryImpl(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  static const _sessionStartGameKey = 'sessionStartGameKey';

  @override
  Duration? getStartGame() {
    final time = sharedPreferences.getInt(_sessionStartGameKey);
    return time != null ? Duration(milliseconds: time) : null;
  }

  @override
  Future<Duration> setStartGame({
    Duration? time,
  }) async {
    final duration = time ??
        Duration(
          microseconds: DateTime.now().microsecond,
        );

    await sharedPreferences.setInt(_sessionStartGameKey, duration.inMilliseconds);
    return duration;
  }
}
