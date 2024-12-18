import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:domain/domain.dart';

@Injectable(as: GameActivityRepository)
class GameActivityRepositoryImpl implements GameActivityRepository {
  GameActivityRepositoryImpl(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  static const _sessionMark = 'sessionMark';

  @override
  bool getSessionActivity() {
    final mark = sharedPreferences.getBool(_sessionMark);
    return mark ?? false;
  }

  @override
  Future<bool> setSessionActivity(bool sessionMark) async {
    await sharedPreferences.setBool(_sessionMark, sessionMark);
    return sessionMark;
  }
}
