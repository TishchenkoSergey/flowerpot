abstract class GameActivityRepository {
  bool getSessionActivity();

  Future<bool> setSessionActivity(bool sessionMark);
}
