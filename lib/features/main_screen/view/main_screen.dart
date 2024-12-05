import 'package:flutter/material.dart';

import 'package:flowerpot/assets/assets.dart';
import 'package:flowerpot/app/route/route.dart';
import 'package:flowerpot/assets/l10n/l10n.dart';

import '../widgets/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final backgroundDecoration = Assets.illustrations.background.provider();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: backgroundDecoration,
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.l10n.projectTitle,
                style: textTheme.labelLarge?.copyWith(
                  fontSize: 36,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  context.l10n.feature_main_text_description,
                  textAlign: TextAlign.center,
                  style: textTheme.labelLarge?.copyWith(
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(height: 100),
              CustomButton(
                title: context.l10n.feature_welcome_button_new_game,
                onPressed: () => context.goNamed(Routes.gamePlay.name),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
