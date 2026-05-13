import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../add_usage/add_usage_screen.dart';
import '../../add_item/add_item_screen.dart';
import '../../add_purchase/add_purchase_screen.dart';

class FloatingAddMenu {
  static void show(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Dismiss',
      barrierColor: Colors.black.withValues(alpha: 0.4),
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return const _WaveMenuContent();
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}

class _WaveMenuContent extends StatefulWidget {
  const _WaveMenuContent();

  @override
  State<_WaveMenuContent> createState() => _WaveMenuContentState();
}

class _WaveMenuContentState extends State<_WaveMenuContent> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    // Give it a tiny delay to allow overlay to appear first
    Future.delayed(const Duration(milliseconds: 50), () {
      if (mounted) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _closeAndNavigate(String action) async {
    await _controller.reverse();
    if (mounted) {
      Navigator.pop(context); // Close the menu
      
      // Navigate to respective screens based on action
      if (action == 'add_usage') {
        Navigator.push(context, MaterialPageRoute(builder: (_) => const AddUsageScreen()));
      } else if (action == 'add_grocery') {
        Navigator.push(context, MaterialPageRoute(builder: (_) => const AddItemScreen(initialIsGrocery: true)));
      } else if (action == 'add_tool') {
        Navigator.push(context, MaterialPageRoute(builder: (_) => const AddItemScreen(initialIsGrocery: false)));
      } else if (action == 'add_purchase') {
        Navigator.push(context, MaterialPageRoute(builder: (_) => const AddPurchaseScreen()));
      }
    }
  }


  void _close() async {
    await _controller.reverse();
    if (mounted) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          // Background dismiss layer
          Positioned.fill(
            child: GestureDetector(
              onTap: _close,
              child: Container(color: Colors.transparent),
            ),
          ),
          
          // Radial Pulse Painter
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return CustomPaint(
                size: MediaQuery.of(context).size,
                painter: _RadialPulsePainter(_controller.value),
              );
            },
          ),
          
          // Wave Path Painter
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return CustomPaint(
                size: MediaQuery.of(context).size,
                painter: _WavePathPainter(_controller.value),
              );
            },
          ),
          
          // Action Buttons and Labels
          ..._buildActionButtons(),

          // Center X Button (Replaces the + button)
          Positioned(
            bottom: 32, // Position to exactly overlap the bottom nav Add button
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: _close,
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: AppColors.iconGreen,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.iconGreen.withOpacity(0.6),
                        blurRadius: 20,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: const Icon(Icons.close, color: Colors.white, size: 32)
                      .animate(controller: _controller, autoPlay: false)
                      .rotate(begin: -0.5, end: 0, curve: Curves.easeOutBack, duration: 400.ms)
                      .scale(begin: const Offset(0.5, 0.5), end: const Offset(1, 1), curve: Curves.easeOutBack, duration: 400.ms),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildActionButtons() {
    final size = MediaQuery.of(context).size;
    final double startX = size.width / 2;
    // Account for bottom navigation padding and button size to match center exactly
    final double startY = size.height - 60; 

    // Positions matching the wave curve
    final List<Map<String, dynamic>> items = [
      {
        'label': 'Add Purchase',
        'icon': Iconsax.receipt_2_1,
        'color': AppColors.iconPurple,
        'dx': startX + 40,
        'dy': startY - 80,
        'action': 'add_purchase',
      },
      {
        'label': 'Add Usage',
        'icon': Iconsax.chart_square,
        'color': AppColors.iconOrange,
        'dx': startX + 80,
        'dy': startY - 150,
        'action': 'add_usage',
      },
      {
        'label': 'Add Kitchen Tool',
        'icon': Iconsax.box_add,
        'color': AppColors.iconBlue,
        'dx': startX + 90,
        'dy': startY - 220,
        'action': 'add_tool',
      },
      {
        'label': 'Add Grocery',
        'icon': Iconsax.shop,
        'color': AppColors.primaryGreen,
        'dx': startX + 60,
        'dy': startY - 300,
        'action': 'add_grocery',
      },
    ];

    List<Widget> widgets = [];

    for (int i = 0; i < items.length; i++) {
      final item = items[i];
      // Staggered delay for each item
      final delay = (i * 100).ms;

      // Circle Button
      widgets.add(
        Positioned(
          left: item['dx'] - 24, // Center the 48x48 button
          top: item['dy'] - 24,
          child: GestureDetector(
            onTap: () => _closeAndNavigate(item['action']),
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: item['color'],
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: item['color'].withOpacity(0.4),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Icon(item['icon'], color: Colors.white, size: 24),
            ),
          ).animate(controller: _controller, autoPlay: false, delay: delay)
           .scale(curve: Curves.easeOutBack, begin: const Offset(0, 0), end: const Offset(1, 1), duration: 400.ms)
           .fade(duration: 400.ms),
        ),
      );

      // Label Pill
      widgets.add(
        Positioned(
          right: size.width - item['dx'] + 36, // Position cleanly to the left of the button
          top: item['dy'] - 16,
          child: GestureDetector(
            onTap: () => _closeAndNavigate(item['action']),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                item['label'],
                style: const TextStyle(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ).animate(controller: _controller, autoPlay: false, delay: delay + 100.ms)
           .slideX(begin: 0.2, end: 0, curve: Curves.easeOutQuart, duration: 300.ms)
           .fade(duration: 300.ms),
        ),
      );
    }

    return widgets;
  }
}

class _RadialPulsePainter extends CustomPainter {
  final double progress;

  _RadialPulsePainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    if (progress == 0) return;

    final center = Offset(size.width / 2, size.height - 60);
    final maxRadius = size.height * 0.4; // How far the ripples expand

    final paint1 = Paint()
      ..color = AppColors.primaryGreen.withOpacity(0.15 * (1 - progress))
      ..style = PaintingStyle.fill;
      
    final paint2 = Paint()
      ..color = AppColors.primaryGreen.withOpacity(0.1 * (1 - progress))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final paint3 = Paint()
      ..color = AppColors.primaryGreen.withOpacity(0.05 * (1 - progress))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    // Draw concentric ripples
    canvas.drawCircle(center, maxRadius * progress, paint1);
    canvas.drawCircle(center, maxRadius * progress * 0.8, paint2);
    canvas.drawCircle(center, maxRadius * progress * 1.2, paint3);
  }

  @override
  bool shouldRepaint(covariant _RadialPulsePainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}

class _WavePathPainter extends CustomPainter {
  final double progress;

  _WavePathPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    if (progress == 0) return;

    final startX = size.width / 2;
    final startY = size.height - 60;

    final paint = Paint()
      ..color = Colors.white.withOpacity(0.8)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final path = Path();
    path.moveTo(startX, startY);

    // Create a bezier curve curving upwards and right
    final controlPoint1 = Offset(startX + 120, startY - 80);
    final controlPoint2 = Offset(startX + 120, startY - 200);
    final endPoint = Offset(startX + 60, startY - 300);

    path.cubicTo(
      controlPoint1.dx, controlPoint1.dy,
      controlPoint2.dx, controlPoint2.dy,
      endPoint.dx, endPoint.dy,
    );

    // Animate drawing the path smoothly based on progress
    final pathMetrics = path.computeMetrics().toList();
    if (pathMetrics.isEmpty) return;

    final pathMetric = pathMetrics.first;
    // Easing the progress for the line
    final curveProgress = Curves.easeInOut.transform(progress);
    final extractPath = pathMetric.extractPath(0, pathMetric.length * curveProgress);

    canvas.drawPath(extractPath, paint);
    
    // Draw dot/node along the drawn path
    final dotPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    if (curveProgress > 0) {
      final currentPos = pathMetric.getTangentForOffset(pathMetric.length * curveProgress)?.position;
      if (currentPos != null) {
        canvas.drawCircle(currentPos, 4, dotPaint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant _WavePathPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
