import 'package:flutter/material.dart';

import 'color_scale_pointer.dart';

class GradientStatus extends StatelessWidget {
  const GradientStatus({
    required this.image,
    required this.value,
    this.iconSize = 40.0,
  }) : assert(value >= 0 && value <= 100, 'Value must be between 0 and 100.');

  final ImageProvider image;
  final double iconSize;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 16, top: 8),
      child: Row(
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
          Expanded(
            child: SizedBox(
              height: 8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(double.infinity, double.infinity),
                      painter: ColorScalePainter(),
                    ),
                    Align(
                      alignment: Alignment(-1.0 + value / 50, 0),
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
