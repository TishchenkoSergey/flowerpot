import 'package:flutter/material.dart';

import 'package:flowerpot/assets/assets.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GradientStatus(image: Assets.icons.water.provider()),
              SizedBox(height: 8),
              GradientStatus(image: Assets.icons.light.provider()),
              SizedBox(height: 8),
              GradientStatus(image: Assets.icons.fertilizer.provider()),
            ],
          ),
        ),
      ),
    );
  }
}
