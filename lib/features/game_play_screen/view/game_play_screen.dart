import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flowerpot/assets/assets.dart';
import 'package:flowerpot/app/route/route.dart';
import 'package:flowerpot/features/features.dart';

import '../widgets/widgets.dart';

class GamePlayScreen extends StatelessWidget {
  const GamePlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final backgroundDecoration = Assets.illustrations.normal.provider();

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: backgroundDecoration,
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: BlocBuilder<GamePlayCubit, GamePlayState>(
            builder: (context, state) {
              return Column(
                children: [
                  InkWell(
                    onTap: () => context.goNamed(Routes.interactions.name),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GradientStatus(
                          image: Assets.icons.water.provider(),
                          value: state.parameters?.water ?? 50,
                        ),
                        SizedBox(height: 8),
                        GradientStatus(
                          image: Assets.icons.light.provider(),
                          value: state.parameters?.light ?? 50,
                        ),
                        SizedBox(height: 8),
                        GradientStatus(
                          image: Assets.icons.fertilizer.provider(),
                          value: state.parameters?.fertilizer ?? 50,
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
