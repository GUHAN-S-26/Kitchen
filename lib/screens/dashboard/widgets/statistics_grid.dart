import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class StatisticsGrid extends StatelessWidget {
  const StatisticsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        children: const [
          _StatCard(
            title: 'Grocery Items',
            count: '24',
            subtitle: 'Total Items',
            icon: Iconsax.shop,
            backgroundColor: AppColors.softGreen,
            iconColor: AppColors.iconGreen,
          ),
          SizedBox(width: 16),
          _StatCard(
            title: 'Kitchen Tools',
            count: '58',
            subtitle: 'Total Items',
            icon: Iconsax.reserve,
            backgroundColor: AppColors.softBlue,
            iconColor: AppColors.iconBlue,
          ),
          SizedBox(width: 16),
          _StatCard(
            title: 'Low Stock',
            count: '5',
            subtitle: 'Items',
            icon: Iconsax.warning_2,
            backgroundColor: AppColors.softOrange,
            iconColor: AppColors.iconOrange,
          ),
          SizedBox(width: 16),
          _StatCard(
            title: 'In Cart',
            count: '3',
            subtitle: 'Items',
            icon: Iconsax.shopping_cart,
            backgroundColor: AppColors.softPurple,
            iconColor: AppColors.iconPurple,
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String count;
  final String subtitle;
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;

  const _StatCard({
    required this.title,
    required this.count,
    required this.subtitle,
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: iconColor),
          ),
          const Spacer(),
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                count,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
              ),
              const SizedBox(width: 4),
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  subtitle,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
