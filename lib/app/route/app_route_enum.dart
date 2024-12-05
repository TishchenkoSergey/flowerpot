enum Routes {
  mainScreen('main-screen'),
  gamePlay('game-play'),
  interactions('interactions');

  const Routes(this.name);

  final String name;

  @override
  String toString() => name;
}
