import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flowerpot/assets/assets.dart';
import 'package:flowerpot/app/route/route.dart';
import 'package:flowerpot/features/features.dart';

import 'package:domain/domain.dart';

import '../widgets/widgets.dart';

class GamePlayScreen extends StatelessWidget {
  const GamePlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final backgroundDecoration = Assets.illustrations.normal.provider();

    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: backgroundDecoration,
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: BlocBuilder<GamePlayCubit, GamePlayState>(
            builder: (context, state) {
              if (state.status == SessionStatus.init) {
                return InfoDialog(
                  title: 'Start game?',
                  description: 'Be careful and this beautiful flower will always be with you.',
                  onPressedNegative: () => context.goNamed(Routes.mainScreen.name),
                  onPressedPositive: context.read<GamePlayCubit>().setupGame,
                  positiveTitleButton: 'GO!',
                  negativeTitleButton: 'Back',
                );
              }

              if (state.status == SessionStatus.complete) {
                return InfoDialog(
                  title: 'Game over',
                  description: "You have taken good care of your flower.\nI'm sure it will be even better next time",
                  onPressedPositive: () => context.goNamed(Routes.mainScreen.name),
                  positiveTitleButton: 'Try again',
                );
              }

              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GradientStatus(
                        image: Assets.icons.water.provider(),
                        value: state.parameters!.water,
                      ),
                      const SizedBox(height: 8),
                      GradientStatus(
                        image: Assets.icons.light.provider(),
                        value: state.parameters!.light,
                      ),
                      const SizedBox(height: 8),
                      GradientStatus(
                        image: Assets.icons.fertilizer.provider(),
                        value: state.parameters!.fertilizer,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleButton(
                          child: const Icon(Icons.event_note_rounded),
                          onPressed: () => context.goNamed(Routes.mainScreen.name),
                        ),
                        CircleButton(
                          child: const Icon(Icons.shopping_basket_outlined),
                          onPressed: () => context.goNamed(Routes.interactions.name),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
