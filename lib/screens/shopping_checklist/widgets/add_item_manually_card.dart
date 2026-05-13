import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../manual_item_add/manual_item_add_screen.dart';

class AddItemManuallyCard extends StatelessWidget {
  const AddItemManuallyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ManualItemAddScreen()),
          );
        },
        child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: CustomPaint(
          painter: _DashedRectPainter(color: AppColors.primaryGreen.withOpacity(0.5)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.primaryGreen),
                  ),
                  child: const Icon(Icons.add, color: AppColors.primaryGreen, size: 20),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add Item Manually',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryGreen,
                            ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Add items you want to buy later',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: AppColors.textSecondary,
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(Icons.chevron_right, color: AppColors.textSecondary, size: 20),
              ],
            ),
          ),
        ),
        ),
      ),
    );
  }
}

class _DashedRectPainter extends CustomPainter {
  final Color color;

  _DashedRectPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 6, dashSpace = 4, startX = 0;
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke;

    final RRect rrect = RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      const Radius.circular(20),
    );

    Path path = Path()..addRRect(rrect);
    Path dashPath = Path();

    for (PathMetric measurePath in path.computeMetrics()) {
      double distance = 0.0;
      while (distance < measurePath.length) {
        dashPath.addPath(
          measurePath.extractPath(distance, distance + dashWidth),
          Offset.zero,
        );
        distance += dashWidth + dashSpace;
      }
    }
    canvas.drawPath(dashPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
