import 'package:flutter/material.dart';

class GradientStatus extends StatelessWidget {
  final ImageProvider image;
  final double iconSize;

  const GradientStatus({
    Key? key,
    required this.image,
    this.iconSize = 48.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
        Container(
          margin: EdgeInsets.all(8),
          width: 200,
          height: 10.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.yellow,
                Colors.green,
                Colors.yellow,
                Colors.red,
              ],
              stops: [0.0, 0.25, 0.5, 0.75, 1.0],
            ),
          ),
        ),
      ],
    );
  }
}
