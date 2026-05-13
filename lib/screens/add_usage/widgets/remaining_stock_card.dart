import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import 'package:iconsax/iconsax.dart';

class RemainingStockCard extends StatelessWidget {
  const RemainingStockCard({super.key});

  @override
  Widget build(BuildContext context) {
    // These would typically come from state management
    const String status = 'Safe Stock'; // 'Safe Stock', 'Low Stock', 'Critical'
    const String remainingQty = '400 g';
    const String message = 'This is above the minimum stock alert.';
    
    Color badgeColor;
    Color badgeBgColor;
    IconData statusIcon;

    switch (status) {
      case 'Low Stock':
        badgeColor = Colors.orange;
        badgeBgColor = Colors.orange.shade50;
        statusIcon = Iconsax.warning_2;
        break;
      case 'Critical':
        badgeColor = Colors.red;
        badgeBgColor = Colors.red.shade50;
        statusIcon = Iconsax.danger;
        break;
      case 'Safe Stock':
      default:
        badgeColor = AppColors.primaryGreen;
        badgeBgColor = AppColors.primaryGreen.withOpacity(0.1);
        statusIcon = Iconsax.tick_circle;
        break;
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: badgeBgColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: badgeColor.withOpacity(0.3)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: badgeColor.withOpacity(0.2),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Icon(statusIcon, color: badgeColor, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Remaining Stock',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: badgeColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        status,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  remainingQty,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  message,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
