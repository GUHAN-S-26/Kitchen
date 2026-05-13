import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class UnreadIndicator extends StatelessWidget {
  const UnreadIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: const BoxDecoration(
        color: AppColors.primaryGreen,
        shape: BoxShape.circle,
      ),
    );
  }
}
