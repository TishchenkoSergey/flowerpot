import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:domain/domain.dart';

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
      pageBuilder: (context, state) => CupertinoPage(
        child: BlocProvider(
          create: (context) {
            return MainScreenCubit(
              updateGameSessionUsecase: serviceLocator.get(param1: GameTypeModel.standard),
              getAvailabilityOfSessionsUseCase: serviceLocator.get(),
            );
          },
          child: const MainScreen(),
        ),
      ),
    );
  }

  GoRoute _buildGamePlayPage() {
    return GoRoute(
      name: Routes.gamePlay.name,
      path: '/${Routes.gamePlay.name}',
      pageBuilder: (context, state) => CupertinoPage(
        child: BlocProvider(
          create: (context) {
            return GamePlayCubit(
              updateGameSessionUsecase: serviceLocator.get(param1: GameTypeModel.active),
              getGameParametersUseCases: serviceLocator.get(param1: GameTypeModel.standard),
              createGameSessionUseCase: serviceLocator.get(param1: GameTypeModel.active),
              getCalculatedParametersUsecase: serviceLocator.get(),
              getSessionStatusUsecase: serviceLocator.get(),
              updateAvailabilityOfSessionsUsecase: serviceLocator.get(),
            );
          },
          child: const GamePlayScreen(),
        ),
      ),
    );
  }

  GoRoute _buildInteractionPage() {
    return GoRoute(
      name: Routes.interactions.name,
      path: '/${Routes.interactions.name}',
      pageBuilder: (context, state) => CupertinoPage(
        child: BlocProvider(
          create: (context) {
            return InteractionsCubit(
              getGameParametersUseCases: serviceLocator.get(param1: GameTypeModel.active),
              updateGameSessionUsecase: serviceLocator.get(param1: GameTypeModel.active),
            );
          },
          child: const InteractionsScreen(),
        ),
      ),
    );
  }
}
