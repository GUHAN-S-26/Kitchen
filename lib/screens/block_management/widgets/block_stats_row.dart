import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class BlockStatsRow extends StatelessWidget {
  const BlockStatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        children: [
          _StatCard(
            title: 'Total Blocks',
            value: '8',
            subtitle: 'All locations',
            icon: Iconsax.box,
            iconColor: AppColors.iconBlue,
            bgColor: AppColors.softBlue,
          ),
          const SizedBox(width: 12),
          _StatCard(
            title: 'Total Items',
            value: '156',
            subtitle: 'Stored in blocks',
            icon: Iconsax.box_1,
            iconColor: AppColors.primaryGreen,
            bgColor: AppColors.softGreen,
          ),
          const SizedBox(width: 12),
          _StatCard(
            title: 'Low Stock Items',
            value: '14',
            subtitle: 'Need attention',
            icon: Iconsax.warning_2,
            iconColor: AppColors.iconOrange,
            bgColor: AppColors.softOrange,
          ),
          const SizedBox(width: 12),
          _StatCard(
            title: 'Recently Used',
            value: 'Block C',
            subtitle: '2 min ago',
            icon: Iconsax.clock,
            iconColor: AppColors.iconPurple,
            bgColor: AppColors.softPurple,
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
        color: bgColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: iconColor, size: 24),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.textSecondary,
                  fontSize: 10,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.textSecondary,
                  fontSize: 10,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
