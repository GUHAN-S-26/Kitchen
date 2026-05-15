import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../core/theme/app_colors.dart';

class ToolConditionCard extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onConditionChanged;

  const ToolConditionCard({
    super.key,
    required this.selectedIndex,
    required this.onConditionChanged,
  });

  static const List<String> _conditions = [
    'Good',
    'Needs Cleaning',
    'Needs Sharpening',
    'Damaged',
    'Missing',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Header
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: AppColors.softGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Iconsax.heart,
                  size: 16,
                  color: AppColors.primaryGreen,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Condition',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Condition Chips
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: List.generate(_conditions.length, (index) {
              final isSelected = selectedIndex == index;
              return GestureDetector(
                onTap: () => onConditionChanged(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.primaryGreen.withValues(alpha: 0.08)
                        : Colors.white,
                    border: Border.all(
                      color: isSelected
                          ? AppColors.primaryGreen
                          : Colors.grey.shade300,
                      width: 1.2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (isSelected) ...[
                        const Icon(
                          Iconsax.tick_circle,
                          color: AppColors.primaryGreen,
                          size: 16,
                        ),
                        const SizedBox(width: 6),
                      ],
                      Text(
                        _conditions[index],
                        style: TextStyle(
                          color: isSelected
                              ? AppColors.primaryGreen
                              : AppColors.textPrimary,
                          fontWeight:
                              isSelected ? FontWeight.w600 : FontWeight.w400,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
