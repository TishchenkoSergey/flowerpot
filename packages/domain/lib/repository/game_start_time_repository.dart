abstract class GameStartTimeRepository {
  Duration getStartGame();

  Future<Duration> setStartGame({
    required Duration time,
  });
}
