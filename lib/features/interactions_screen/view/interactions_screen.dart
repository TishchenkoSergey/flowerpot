import 'package:flutter/material.dart';

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
        body: Column(
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
                      onPressed: () {},
                      image: Assets.icons.water2.provider(),
                      title: context.l10n.feature_interactions_card_water_title2,
                      comment: context.l10n.feature_interactions_card_comment(5),
                    ),
                    InteractionCard(
                      onPressed: () {},
                      image: Assets.icons.water3.provider(),
                      title: context.l10n.feature_interactions_card_water_title3,
                      comment: context.l10n.feature_interactions_card_comment(10),
                    ),
                    InteractionCard(
                      onPressed: () {},
                      image: Assets.icons.water4.provider(),
                      title: context.l10n.feature_interactions_card_water_title4,
                      comment: context.l10n.feature_interactions_card_comment(20),
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
                      onPressed: () {},
                      image: Assets.icons.light2.provider(),
                      title: context.l10n.feature_interactions_card_light_title2,
                      comment: context.l10n.feature_interactions_card_comment(5),
                    ),
                    InteractionCard(
                      onPressed: () {},
                      image: Assets.icons.light3.provider(),
                      title: context.l10n.feature_interactions_card_light_title3,
                      comment: context.l10n.feature_interactions_card_comment(10),
                    ),
                    InteractionCard(
                      onPressed: () {},
                      image: Assets.icons.light4.provider(),
                      title: context.l10n.feature_interactions_card_light_title4,
                      comment: context.l10n.feature_interactions_card_comment(20),
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
                      onPressed: () {},
                      image: Assets.icons.fertilizer2.provider(),
                      title: context.l10n.feature_interactions_card_fertilizer_title2,
                      comment: context.l10n.feature_interactions_card_comment(5),
                    ),
                    InteractionCard(
                      onPressed: () {},
                      image: Assets.icons.fertilizer3.provider(),
                      title: context.l10n.feature_interactions_card_fertilizer_title3,
                      comment: context.l10n.feature_interactions_card_comment(10),
                    ),
                    InteractionCard(
                      onPressed: () {},
                      image: Assets.icons.fertilizer4.provider(),
                      title: context.l10n.feature_interactions_card_fertilizer_title4,
                      comment: context.l10n.feature_interactions_card_comment(20),
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
