import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class SummaryInfoCard extends StatelessWidget {
  const SummaryInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.softGreen,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.primaryGreen.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Iconsax.chart_square, color: AppColors.primaryGreen, size: 20),
              const SizedBox(width: 8),
              Text(
                'Summary Includes:',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryGreen,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          _buildInfoRow(context, 'Most used items'),
          const SizedBox(height: 8),
          _buildInfoRow(context, 'Low stock items'),
          const SizedBox(height: 8),
          _buildInfoRow(context, 'Monthly spending'),
          const SizedBox(height: 8),
          _buildInfoRow(context, 'Waste tracking'),
          const SizedBox(height: 8),
          _buildInfoRow(context, 'Refill suggestions'),
        ],
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, String text) {
    return Row(
      children: [
        Icon(Icons.check_circle, color: AppColors.primaryGreen.withValues(alpha: 0.7), size: 16),
        const SizedBox(width: 8),
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppColors.textPrimary.withValues(alpha: 0.8),
              ),
        ),
      ],
    );
  }
}
