import 'package:flutter/material.dart';

class InteractionTitle extends StatelessWidget {
  const InteractionTitle({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 1,
              color: Colors.lightBlueAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              title,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: Container(
              height: 1,
              color: Colors.lightBlueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
