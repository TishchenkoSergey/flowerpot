import 'package:flutter/material.dart';

class InfoDialog extends StatelessWidget {
  const InfoDialog({
    required this.title,
    this.description,
    this.positiveTitleButton,
    this.negativeTitleButton,
    this.onPressedPositive,
    this.onPressedNegative,
    super.key,
  });

  final String title;
  final String? description;
  final String? positiveTitleButton;
  final String? negativeTitleButton;
  final VoidCallback? onPressedPositive;
  final VoidCallback? onPressedNegative;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            if (description != null) ...[
              Text(
                description!,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
            ],
            IntrinsicWidth(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (onPressedNegative != null) ...[
                    ElevatedButton(
                      onPressed: onPressedNegative,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Text(negativeTitleButton!),
                    ),
                    const SizedBox(width: 8),
                  ],
                  if (positiveTitleButton != null)
                    ElevatedButton(
                      onPressed: onPressedPositive,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Text(positiveTitleButton!),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
