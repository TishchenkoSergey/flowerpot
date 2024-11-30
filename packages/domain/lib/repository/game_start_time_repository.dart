abstract class GameStartTimeRepository {
  Duration? getStartGame();

  Future<Duration> setStartGame({Duration? time});
}
