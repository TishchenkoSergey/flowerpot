import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    required this.child,
    required this.onPressed,
    this.size = const Size.square(56),
    super.key,
  });

  final Widget child;
  final VoidCallback? onPressed;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.8),
        border: Border.all(
          color: Colors.orangeAccent.withOpacity(0.8),
        ),
        shape: BoxShape.circle,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
