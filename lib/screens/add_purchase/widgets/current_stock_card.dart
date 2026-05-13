import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class CurrentStockCard extends StatelessWidget {
  const CurrentStockCard({super.key});

  @override
  Widget build(BuildContext context) {
    const double currentStock = 400.0;
    const double capacity = 2000.0;
    const double progressPercentage = currentStock / capacity;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Current Stock',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '400',
                        style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          fontSize: 28,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'g',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Unit: kg',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          // Progress Bar
          Stack(
            children: [
              Container(
                height: 12,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    height: 12,
                    width: constraints.maxWidth * progressPercentage,
                    decoration: BoxDecoration(
                      color: AppColors.primaryGreen,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Bottom Stats
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Minimum Alert: 200 g',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Status: Safe',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.primaryGreen,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
