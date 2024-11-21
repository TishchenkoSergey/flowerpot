import 'package:flutter/material.dart';

class InteractionTitle extends StatelessWidget {
  const InteractionTitle({
    required this.title,
  }) : super();

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
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
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              title,
              style: TextStyle(fontSize: 16),
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
