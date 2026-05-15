import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class UsageHistorySection extends StatelessWidget {
  const UsageHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
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
          _HistoryItem(
            action: 'Used 10 g',
            time: 'Today, 08:30 AM',
            remaining: '1 kg Left',
            isAdded: false,
          ),
          const Divider(height: 24),
          _HistoryItem(
            action: 'Used 50 g',
            time: 'Yesterday, 06:40 PM',
            remaining: '1.01 kg Left',
            isAdded: false,
          ),
          const Divider(height: 24),
          _HistoryItem(
            action: 'Added 500 g',
            time: '10 May 2024, 05:20 PM',
            remaining: '1.06 kg Left',
            isAdded: true,
          ),
          const Divider(height: 24),
          _HistoryItem(
            action: 'Used 100 g',
            time: '10 May 2024, 10:10 AM',
            remaining: '560 g Left',
            isAdded: false,
          ),
        ],
      ),
    );
  }
}

class _HistoryItem extends StatelessWidget {
  final String action;
  final String time;
  final String remaining;
  final bool isAdded;

  const _HistoryItem({
    required this.action,
    required this.time,
    required this.remaining,
    required this.isAdded,
  });

  @override
  Widget build(BuildContext context) {
    final color = isAdded ? AppColors.iconGreen : AppColors.iconOrange;
    final softColor = isAdded ? AppColors.softGreen : AppColors.softOrange;
    final icon = isAdded ? Icons.arrow_upward : Icons.arrow_downward;

    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: softColor,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color, size: 16),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                action,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                time,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              remaining.replaceAll(' Left', ''),
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 2),
            Text(
              'Left',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        const SizedBox(width: 12),
        const Icon(Icons.chevron_right, color: AppColors.textSecondary),
      ],
    );
  }
}
