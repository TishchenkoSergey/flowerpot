import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.title,
    required this.onPressed,
    super.key,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.amber,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 200),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            title,
            style: textTheme.labelMedium?.copyWith(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
