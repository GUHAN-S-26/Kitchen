import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';
import '../../../providers/usage/usage_provider.dart';

class RecentUsageList extends ConsumerWidget {
  const RecentUsageList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usageList = ref.watch(usageProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Usage',
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

          if (usageList.isEmpty)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
                borderRadius: BorderRadius.circular(24),
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
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.softBlue,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Iconsax.chart_2, color: AppColors.iconBlue, size: 32),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'No usage recorded yet',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Start recording usage to see history here.',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          else
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
                borderRadius: BorderRadius.circular(24),
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
                  for (int i = 0; i < usageList.length && i < 10; i++) ...[
                    _RecentUsageItem(
                      name: usageList[i].itemName,
                      used: usageList[i].usageDisplay,
                      location: usageList[i].itemType == 'grocery' ? 'Grocery' : 'Kitchen Tool',
                      time: usageList[i].timeAgo,
                      icon: Iconsax.box,
                      iconColor: i % 3 == 0
                          ? AppColors.softOrange
                          : (i % 3 == 1 ? AppColors.softGreen : AppColors.softBlue),
                      actualIconColor: i % 3 == 0
                          ? AppColors.iconOrange
                          : (i % 3 == 1 ? AppColors.iconGreen : AppColors.iconBlue),
                    ),
                    if (i < usageList.length - 1 && i < 9)
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child: Divider(height: 1, color: Color(0xFFEEEEEE)),
                      ),
                  ],
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _RecentUsageItem extends StatelessWidget {
  final String name;
  final String used;
  final String location;
  final String time;
  final IconData icon;
  final Color iconColor;
  final Color actualIconColor;

  const _RecentUsageItem({
    required this.name,
    required this.used,
    required this.location,
    required this.time,
    required this.icon,
    required this.iconColor,
    required this.actualIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
          flex: 2,
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
                'Used $used',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.textSecondary,
                    ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Iconsax.location, size: 12, color: AppColors.textSecondary),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      location,
                      style: Theme.of(context).textTheme.bodySmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(Iconsax.clock, size: 12, color: AppColors.textSecondary),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      time,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.textSecondary,
                          ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.softRed,
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.arrow_downward, color: AppColors.iconRed, size: 16),
        ),
      ],
    );
  }
}
