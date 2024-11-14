import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:go_router/go_router.dart';

import 'package:flowerpot/features/features.dart';

import '../route/app_route_consts.dart';

class AppRoute {
  GoRouter build(BuildContext context) {
    return GoRouter(
      routes: [
        ShellRoute(
          builder: (BuildContext context, GoRouterState state, Widget child) => child,
          routes: [
            GoRoute(
              path: AppRoutInfo.main.path,
              name: AppRoutInfo.main.name,
              builder: (BuildContext context, GoRouterState state) => const MainScreen(),
            ),
          ],
        )
      ],
      initialLocation: AppRoutInfo.main.path,
    );
  }
}
