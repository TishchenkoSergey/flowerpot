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
    return InkWell(
      onTap: onPressed,
      child: Container(
        constraints: const BoxConstraints(
          maxHeight: 200,
        ),
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
              '${time}',
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
