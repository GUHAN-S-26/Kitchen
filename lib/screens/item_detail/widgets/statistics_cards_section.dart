import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class StatisticsCardsSection extends StatelessWidget {
  const StatisticsCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _StatCard(
            title: 'Total Quantity',
            value: '2 kg',
            icon: Iconsax.weight_1,
            iconColor: AppColors.iconBlue,
          ),
          _StatCard(
            title: 'Used',
            value: '1 kg',
            icon: Iconsax.chart_square,
            iconColor: AppColors.iconGreen,
          ),
          _StatCard(
            title: 'To Refill',
            value: '1 kg',
            icon: Iconsax.bag_2,
            iconColor: AppColors.iconOrange,
          ),
          _StatCard(
            title: 'Added On',
            value: '10 May 2024',
            icon: Iconsax.calendar_1,
            iconColor: AppColors.iconPurple,
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color iconColor;

  const _StatCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.02),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(icon, color: iconColor, size: 24),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: 10,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
