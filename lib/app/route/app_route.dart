import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:flowerpot/features/features.dart';

import 'app_route_enum.dart';

class AppRoute {
  AppRoute({
    required this.serviceLocator,
  });

  final GetIt serviceLocator;

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
      pageBuilder: (BuildContext context, GoRouterState state) => CupertinoPage(
        child: BlocProvider(
          create: (context) => MainScreenCubit(
            createGameSessionUseCase: serviceLocator.get(),
            getGameParametersUseCases: serviceLocator.get(),
          ),
          child: const MainScreen(),
        ),
      ),
    );
  }

  GoRoute _buildGamePlayPage() {
    return GoRoute(
      name: Routes.gamePlay.name,
      path: '/${Routes.gamePlay.name}',
      pageBuilder: (BuildContext context, GoRouterState state) => CupertinoPage(
        child: BlocProvider(
          create: (context) => GamePlayCubit(
            getGameParametersUseCases: serviceLocator.get(),
            updateSessionStatusUsecase: serviceLocator.get(),
          ),
          child: const GamePlayScreen(),
        ),
      ),
    );
  }

  GoRoute _buildInteractionPage() {
    return GoRoute(
      name: Routes.interactions.name,
      path: '/${Routes.interactions.name}',
      pageBuilder: (BuildContext context, GoRouterState state) => CupertinoPage(
        child: BlocProvider(
          create: (context) => InteractionsCubit(
            updateGameParametersUsecases: serviceLocator.get(),
            getGameParametersUseCases: serviceLocator.get(),
          ),
          child: const InteractionsScreen(),
        ),
      ),
    );
  }
}
