import 'package:flutter/material.dart';

import 'package:flowerpot/assets/l10n/l10n.dart';

class InteractionCard extends StatelessWidget {
  const InteractionCard({
    required this.onPressed,
    required this.image,
    required this.title,
    required this.addPoint,
    this.iconSize = 48.0,
    super.key,
  });

  final VoidCallback? onPressed;
  final ImageProvider image;
  final String title;
  final int addPoint;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    final time = Duration(minutes: addPoint);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          constraints: const BoxConstraints(
            maxHeight: 160,
            minWidth: 120,
          ),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.inversePrimary,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.lightGreenAccent,
            ),
          ),
          child: Column(
            children: [
              Container(
                width: iconSize,
                height: iconSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 8),
              Text(
                context.l10n.feature_interactions_card_comment(addPoint),
              ),
              const SizedBox(height: 8),
              Text(
                time.toString().split('.').first,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
