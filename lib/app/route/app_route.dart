import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flowerpot/features/features.dart';

import 'app_route_enum.dart';

class AppRoute {
  GoRouter build(BuildContext context) {
    return GoRouter(
      routes: [
        _buildMainPage(),
        _buildGamePlayPage(),
        _buildInteractionPage(),
      ],
      initialLocation: '/${Routes.mainScreen.name}',
    );
  }

  GoRoute _buildMainPage() {
    return GoRoute(
      name: Routes.mainScreen.name,
      path: '/${Routes.mainScreen.name}',
      pageBuilder: (context, state) => const CupertinoPage(
        child: MainScreen(),
      ),
    );
  }

  GoRoute _buildGamePlayPage() {
    return GoRoute(
      name: Routes.gamePlay.name,
      path: '/${Routes.gamePlay.name}',
      pageBuilder: (context, state) => CupertinoPage(
        child: BlocProvider(
          create: (context) => GamePlayCubit(),
          child: const GamePlayScreen(),
        ),
      ),
    );
  }

  GoRoute _buildInteractionPage() {
    return GoRoute(
      name: Routes.interactions.name,
      path: '/${Routes.interactions.name}',
      pageBuilder: (context, state) => const CupertinoPage(
        child: InteractionsScreen(),
      ),
    );
  }
}
