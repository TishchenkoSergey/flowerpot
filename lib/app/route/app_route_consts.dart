class RouteData {
  const RouteData({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;
}

abstract class AppRoutInfo {
  static const main = RouteData(
    name: 'main',
    path: '/main',
  );
}
