import 'package:flowerpot/features/features.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
export 'package:go_router/go_router.dart';

import 'package:flowerpot/app/route/route.dart';
import 'package:flowerpot/assets/assets.dart';
import 'package:flowerpot/assets/l10n/l10n.dart';

import '../widgets/widgets.dart';

class InteractionsScreen extends StatelessWidget {
  const InteractionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.l10n.feature_interactions_app_bar,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => context.goNamed(Routes.gamePlay.name),
        ),
      ),
      body: BlocBuilder<InteractionsCubit, InteractionsState>(builder: (context, state) {
        return Column(
          children: [
            Column(
              children: [
                InteractionTitle(
                  title: context.l10n.feature_interactions_title_water,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InteractionCard(
                      onPressed: () => context.read<InteractionsCubit>().changeCareLevel(water: 5),
                      image: Assets.icons.water2.provider(),
                      title: context.l10n.feature_interactions_card_water_title2,
                      addPoint: 5,
                    ),
                    InteractionCard(
                      onPressed: () => context.read<InteractionsCubit>().changeCareLevel(water: 10),
                      image: Assets.icons.water3.provider(),
                      title: context.l10n.feature_interactions_card_water_title3,
                      addPoint: 10,
                    ),
                    InteractionCard(
                      onPressed: () => context.read<InteractionsCubit>().changeCareLevel(water: 20),
                      image: Assets.icons.water4.provider(),
                      title: context.l10n.feature_interactions_card_water_title4,
                      addPoint: 20,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                InteractionTitle(
                  title: context.l10n.feature_interactions_title_light,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InteractionCard(
                      onPressed: () => context.read<InteractionsCubit>().changeCareLevel(light: 5),
                      image: Assets.icons.light2.provider(),
                      title: context.l10n.feature_interactions_card_light_title2,
                      addPoint: 5,
                    ),
                    InteractionCard(
                      onPressed: () => context.read<InteractionsCubit>().changeCareLevel(light: 10),
                      image: Assets.icons.light3.provider(),
                      title: context.l10n.feature_interactions_card_light_title3,
                      addPoint: 10,
                    ),
                    InteractionCard(
                      onPressed: () => context.read<InteractionsCubit>().changeCareLevel(light: 20),
                      image: Assets.icons.light4.provider(),
                      title: context.l10n.feature_interactions_card_light_title4,
                      addPoint: 20,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                InteractionTitle(
                  title: context.l10n.feature_interactions_title_fertilizer,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InteractionCard(
                      onPressed: () => context.read<InteractionsCubit>().changeCareLevel(fertilizer: 5),
                      image: Assets.icons.fertilizer2.provider(),
                      title: context.l10n.feature_interactions_card_fertilizer_title2,
                      addPoint: 5,
                    ),
                    InteractionCard(
                      onPressed: () => context.read<InteractionsCubit>().changeCareLevel(fertilizer: 10),
                      image: Assets.icons.fertilizer3.provider(),
                      title: context.l10n.feature_interactions_card_fertilizer_title3,
                      addPoint: 10,
                    ),
                    InteractionCard(
                      onPressed: () => context.read<InteractionsCubit>().changeCareLevel(fertilizer: 20),
                      image: Assets.icons.fertilizer4.provider(),
                      title: context.l10n.feature_interactions_card_fertilizer_title4,
                      addPoint: 20,
                    ),
                  ],
                ),
              ],
            )
          ],
        );
      }),
    );
  }
}
