import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../core/theme/app_colors.dart';

class ToolUsageHistorySection extends StatelessWidget {
  const ToolUsageHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Usage History',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'View All',
                style: TextStyle(
                  color: AppColors.primaryGreen,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        _buildHistoryItem(
          context,
          status: 'Used',
          description: 'Used for chopping vegetables',
          time: 'Today, 08:30 AM',
          icon: Iconsax.activity,
          color: Colors.blue,
          isFirst: true,
        ),
        _buildHistoryItem(
          context,
          status: 'Returned',
          description: 'Returned to Drawer A',
          time: 'Yesterday, 06:15 PM',
          icon: Iconsax.arrow_down,
          color: Colors.green,
        ),
        _buildHistoryItem(
          context,
          status: 'Cleaned',
          description: 'Cleaned and wiped',
          time: 'Yesterday, 06:10 PM',
          icon: Iconsax.brush_2,
          color: Colors.teal,
        ),
        _buildHistoryItem(
          context,
          status: 'Moved',
          description: 'Moved from Shelf to Drawer A',
          time: '12 May, 10:00 AM',
          icon: Iconsax.folder_cross,
          color: Colors.orange,
          isLast: true,
        ),
      ],
    );
  }

  Widget _buildHistoryItem(BuildContext context, {
    required String status,
    required String description,
    required String time,
    required IconData icon,
    required MaterialColor color,
    bool isFirst = false,
    bool isLast = false,
  }) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Timeline line & icon
          SizedBox(
            width: 40,
            child: Column(
              children: [
                Container(
                  width: 2,
                  height: 16,
                  color: isFirst ? Colors.transparent : Colors.grey.shade300,
                ),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: color.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, size: 14, color: color.shade700),
                ),
                Expanded(
                  child: Container(
                    width: 2,
                    color: isLast ? Colors.transparent : Colors.grey.shade300,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          // Content Card
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.cardBackground,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          status,
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.textPrimary,
                              ),
                        ),
                        Text(
                          time,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: AppColors.textSecondary,
                                fontSize: 10,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.textSecondary,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
