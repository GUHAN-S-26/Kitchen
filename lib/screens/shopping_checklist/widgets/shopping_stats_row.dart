import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class ShoppingStatsRow extends StatelessWidget {
  const ShoppingStatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        children: [
          _StatCard(
            title: 'Total Items',
            value: '7',
            subtitle: 'On your list',
            icon: Iconsax.shopping_cart,
            iconColor: AppColors.iconRed,
            bgColor: AppColors.softRed,
          ),
          const SizedBox(width: 16),
          _StatCard(
            title: 'Low Stock',
            value: '5',
            subtitle: 'Needs attention',
            icon: Iconsax.warning_2,
            iconColor: AppColors.iconOrange,
            bgColor: AppColors.softOrange,
          ),
          const SizedBox(width: 16),
          _StatCard(
            title: 'Purchased',
            value: '2',
            subtitle: 'Completed',
            icon: Iconsax.tick_circle,
            iconColor: AppColors.primaryGreen,
            bgColor: AppColors.softGreen,
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final String subtitle;
  final IconData icon;
  final Color iconColor;
  final Color bgColor;

  const _StatCard({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.icon,
    required this.iconColor,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: iconColor, size: 24),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                        fontSize: 10,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            value,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.textSecondary,
                  fontSize: 10,
                ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
