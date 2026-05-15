import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';
import '../../../providers/usage/usage_provider.dart';
import '../../../providers/grocery/grocery_provider.dart';

class AnalyticsGrid extends ConsumerWidget {
  const AnalyticsGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usageList = ref.watch(usageProvider);
    final groceryCount = ref.watch(groceryCountProvider);

    // Calculate total used quantity
    double totalUsed = 0;
    for (final u in usageList) {
      totalUsed += u.quantityUsed;
    }

    // Unique items used
    final uniqueItems = usageList.map((u) => u.itemId).toSet().length;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          Row(
            children: [
              _AnalyticsCard(
                title: 'Total Used',
                value: totalUsed > 1000
                    ? '${(totalUsed / 1000).toStringAsFixed(1)} kg'
                    : '${totalUsed.toStringAsFixed(0)} g',
                badgeText: '${usageList.length} records',
                badgeColor: AppColors.primaryGreen,
                badgeBgColor: AppColors.primaryGreen.withOpacity(0.1),
                icon: Iconsax.receive_square_2,
                iconColor: Colors.white,
                iconBgColor: AppColors.primaryGreen,
                cardBgColor: AppColors.softGreen.withOpacity(0.5),
              ),
              const SizedBox(width: 16),
              _AnalyticsCard(
                title: 'Items Used',
                value: '$uniqueItems',
                badgeText: 'of $groceryCount items',
                badgeColor: AppColors.iconBlue,
                badgeBgColor: AppColors.softBlue,
                icon: Iconsax.reserve,
                iconColor: Colors.white,
                iconBgColor: AppColors.iconBlue,
                cardBgColor: AppColors.softBlue.withOpacity(0.5),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _AnalyticsCard(
                title: 'Total Value',
                value: '₹ 0',
                badgeText: 'Coming soon',
                badgeColor: AppColors.iconOrange,
                badgeBgColor: AppColors.softOrange,
                icon: Iconsax.chart_square,
                iconColor: Colors.white,
                iconBgColor: AppColors.iconOrange,
                cardBgColor: AppColors.softOrange.withOpacity(0.5),
              ),
              const SizedBox(width: 16),
              _AnalyticsCard(
                title: 'Wasted',
                value: '0',
                badgeText: 'Coming soon',
                badgeColor: AppColors.iconPurple,
                badgeBgColor: AppColors.softPurple,
                icon: Iconsax.trash,
                iconColor: Colors.white,
                iconBgColor: AppColors.iconPurple,
                cardBgColor: AppColors.softPurple.withOpacity(0.5),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AnalyticsCard extends StatelessWidget {
  final String title;
  final String value;
  final String badgeText;
  final Color badgeColor;
  final Color badgeBgColor;
  final IconData icon;
  final Color iconColor;
  final Color iconBgColor;
  final Color cardBgColor;

  const _AnalyticsCard({
    required this.title,
    required this.value,
    required this.badgeText,
    required this.badgeColor,
    required this.badgeBgColor,
    required this.icon,
    required this.iconColor,
    required this.iconBgColor,
    required this.cardBgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: cardBgColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: iconBgColor,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: iconColor, size: 24),
            ),
            const SizedBox(height: 16),
            Text(
              value,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.textSecondary,
                  ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: badgeBgColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                badgeText,
                style: TextStyle(
                  color: badgeColor,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
