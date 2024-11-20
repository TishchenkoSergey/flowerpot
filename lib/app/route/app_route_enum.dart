enum Routes {
  mainScreen('main-screen'),
  gamePlay('game-play');

  const Routes(this.name);

  final String name;

  @override
  String toString() => name;
}
