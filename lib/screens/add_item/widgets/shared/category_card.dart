import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final bool isSelected;
  final VoidCallback? onTap;

  const CategoryCard({
    super.key,
    required this.title,
    required this.icon,
    required this.iconColor,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.softGreen : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? AppColors.primaryGreen : Colors.grey.shade200,
            width: isSelected ? 1.5 : 1,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: AppColors.primaryGreen.withValues(alpha: 0.08),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ]
              : [],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: iconColor, size: 26),
            const SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                color: isSelected ? AppColors.iconGreen : AppColors.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
