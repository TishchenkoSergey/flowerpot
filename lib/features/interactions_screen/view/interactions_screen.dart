import 'package:flutter/material.dart';

export 'package:go_router/go_router.dart';

import 'package:flowerpot/app/route/route.dart';
import 'package:flowerpot/assets/assets.dart';

import '../widgets/widgets.dart';

class InteractionsScreen extends StatelessWidget {
  const InteractionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Interactions',
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
                title: 'Water',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
              ),
            ],
          ),
          Column(
            children: [
              InteractionTitle(
                title: 'Light',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InteractionCard(
                    onPressed: () {},
                    image: Assets.icons.light2.provider(),
                    title: '5',
                    comment: '+5%',
                  ),
                  InteractionCard(
                    onPressed: () {},
                    image: Assets.icons.light3.provider(),
                    title: '10',
                    comment: '+10%',
                  ),
                  InteractionCard(
                    onPressed: () {},
                    image: Assets.icons.light4.provider(),
                    title: '20',
                    comment: '+20%',
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              InteractionTitle(
                title: 'Fertilizer',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InteractionCard(
                    onPressed: () {},
                    image: Assets.icons.fertilizer2.provider(),
                    title: '5',
                    comment: '+5%',
                  ),
                  InteractionCard(
                    onPressed: () {},
                    image: Assets.icons.fertilizer3.provider(),
                    title: '10',
                    comment: '+10%',
                  ),
                  InteractionCard(
                    onPressed: () {},
                    image: Assets.icons.fertilizer4.provider(),
                    title: '20',
                    comment: '+20%',
                  ),
                ],
              ),
            ],
          )
        ],
      )
    );
  }
}
