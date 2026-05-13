import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class TopUsedItemsList extends StatelessWidget {
  const TopUsedItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Used Items',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Row(
                children: [
                  Text(
                    'View All',
                    style: TextStyle(
                      color: AppColors.primaryGreen,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.chevron_right, size: 16, color: AppColors.primaryGreen),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          _TopItemCard(
            name: 'Rice',
            usageCount: 'Used 3 times',
            quantity: '1.2 kg',
            badgeText: '↑ 15%',
            isIncrease: true,
            iconColor: AppColors.softGreen,
            icon: Iconsax.box,
            actualIconColor: AppColors.iconGreen,
          ),
          const SizedBox(height: 12),
          _TopItemCard(
            name: 'Sugar',
            usageCount: 'Used 5 times',
            quantity: '800 g',
            badgeText: '↑ 10%',
            isIncrease: true,
            iconColor: AppColors.softOrange,
            icon: Iconsax.box,
            actualIconColor: AppColors.iconOrange,
          ),
          const SizedBox(height: 12),
          _TopItemCard(
            name: 'Oil',
            usageCount: 'Used 4 times',
            quantity: '450 ml',
            badgeText: '↑ 20%',
            isIncrease: true,
            iconColor: AppColors.softBlue,
            icon: Iconsax.glass,
            actualIconColor: AppColors.iconBlue,
          ),
          const SizedBox(height: 12),
          _TopItemCard(
            name: 'Salt',
            usageCount: 'Used 6 times',
            quantity: '300 g',
            badgeText: '↓ 5%',
            isIncrease: false,
            iconColor: AppColors.softPurple,
            icon: Iconsax.box,
            actualIconColor: AppColors.iconPurple,
          ),
          const SizedBox(height: 12),
          _TopItemCard(
            name: 'Toor Dal',
            usageCount: 'Used 2 times',
            quantity: '250 g',
            badgeText: '↑ 8%',
            isIncrease: true,
            iconColor: AppColors.softRed,
            icon: Iconsax.box,
            actualIconColor: AppColors.iconRed,
          ),
        ],
      ),
    );
  }
}

class _TopItemCard extends StatelessWidget {
  final String name;
  final String usageCount;
  final String quantity;
  final String badgeText;
  final bool isIncrease;
  final Color iconColor;
  final IconData icon;
  final Color actualIconColor;

  const _TopItemCard({
    required this.name,
    required this.usageCount,
    required this.quantity,
    required this.badgeText,
    required this.isIncrease,
    required this.iconColor,
    required this.icon,
    required this.actualIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: iconColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: actualIconColor),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  usageCount,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
              ],
            ),
          ),
          Text(
            quantity,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(width: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: isIncrease ? AppColors.softGreen : AppColors.softPurple,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              badgeText,
              style: TextStyle(
                color: isIncrease ? AppColors.primaryGreen : AppColors.iconPurple,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 8),
          const Icon(Icons.chevron_right, color: AppColors.textSecondary, size: 20),
        ],
      ),
    );
  }
}
