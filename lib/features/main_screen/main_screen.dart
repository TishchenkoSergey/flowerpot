import 'package:flutter/material.dart';

import 'package:flowerpot/assets/assets.dart';

import 'widgets/widgets.dart';

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
                'Flowerpot',
                style: textTheme.labelLarge?.copyWith(
                  fontSize: 36,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'Start caring for your plant to help it live longer',
                  textAlign: TextAlign.center,
                  style: textTheme.labelLarge?.copyWith(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: 100),
              CustomButton(
                title: 'New Game',
                onPressed: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
