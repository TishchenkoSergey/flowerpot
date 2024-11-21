import 'package:flowerpot/features/features.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flowerpot/assets/assets.dart';

import '../bloc/game_play_cubit.dart';
import '../widgets/widgets.dart';

class GamePlayScreen extends StatelessWidget {
  const GamePlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final backgroundDecoration = Assets.illustrations.normal.provider();

    return BlocConsumer<GamePlayCubit, GamePlayState>(
      listener: _blocListener,
      builder: (context, state) => Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: backgroundDecoration,
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GradientStatus(
                  image: Assets.icons.water.provider(),
                  onPressed: context.read<GamePlayCubit>().openWaterMenu,
                ),
                SizedBox(height: 8),
                GradientStatus(
                  image: Assets.icons.light.provider(),
                  onPressed: context.read<GamePlayCubit>().openLightMenu,
                ),
                SizedBox(height: 8),
                GradientStatus(
                  image: Assets.icons.fertilizer.provider(),
                  onPressed: context.read<GamePlayCubit>().openFertilizerMenu,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _blocListener(BuildContext context, GamePlayState state) async {
    if (state.menu != OpenMenu.initial) {
      void _showModalBottomSheet(BuildContext context) {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          builder: (BuildContext context) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,              children: [
                InteractionCard(
                  onPressed: () {},
                  image: Assets.icons.water2.provider(),
                  title: '5',
                  comment: '+5%',
                ),
                InteractionCard(
                  onPressed: () {},
                  image: Assets.icons.water3.provider(),
                  title: '10',
                  comment: '+10%',
                ),
                InteractionCard(
                  onPressed: () {},
                  image: Assets.icons.water4.provider(),
                  title: '20',
                  comment: '+20%',
                ),
              ],
            );
          },
        );
      }

      _showModalBottomSheet(context);
    }

    // if (menu == OpenMenu.water) {
    //
    // } else if (menu == OpenMenu.light) {
    //   await showAdaptiveDialog(
    //     context: context,
    //     builder: (context) => AlertDialog(
    //       title: const Text('light'),
    //     ),
    //     barrierDismissible: true,
    //   );
    // } else if (menu == OpenMenu.fertilizer) {
    //   await showAdaptiveDialog(
    //     context: context,
    //     builder: (context) => AlertDialog(
    //       title: const Text('fertilizer'),
    //     ),
    //     barrierDismissible: true,
    //   );
    // }
  }
}
