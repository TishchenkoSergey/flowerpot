import 'package:flutter/material.dart';

class InteractionCard extends StatelessWidget {
  const InteractionCard({
    required this.onPressed,
    required this.image,
    required this.title,
    required this.comment,
    this.time = const Duration(minutes: 5),
    this.iconSize = 48.0,
  }) : super();

  final VoidCallback? onPressed;
  final ImageProvider image;
  final String title;
  final String comment;
  final Duration time;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          constraints: const BoxConstraints(
            maxHeight: 160,
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
                comment,
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 8),
              Text(
                '${time.toString().split('.').first}',
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
