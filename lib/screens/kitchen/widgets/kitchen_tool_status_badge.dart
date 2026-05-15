import 'package:flutter/material.dart';

enum ToolStatus {
  available,
  inUse,
  needsSharpening,
  missing,
}

class KitchenToolStatusBadge extends StatelessWidget {
  final ToolStatus status;

  const KitchenToolStatusBadge({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;
    String text;

    switch (status) {
      case ToolStatus.available:
        backgroundColor = Colors.green.withValues(alpha: 0.1);
        textColor = Colors.green.shade700;
        text = 'Available';
        break;
      case ToolStatus.inUse:
        backgroundColor = Colors.blue.withValues(alpha: 0.1);
        textColor = Colors.blue.shade700;
        text = 'In Use';
        break;
      case ToolStatus.needsSharpening:
        backgroundColor = Colors.orange.withValues(alpha: 0.1);
        textColor = Colors.orange.shade800;
        text = 'Needs Sharpening';
        break;
      case ToolStatus.missing:
        backgroundColor = Colors.red.withValues(alpha: 0.1);
        textColor = Colors.red.shade700;
        text = 'Missing';
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
