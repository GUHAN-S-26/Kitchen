import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../core/theme/app_colors.dart';

class ToolConditionSection extends StatefulWidget {
  const ToolConditionSection({super.key});

  @override
  State<ToolConditionSection> createState() => _ToolConditionSectionState();
}

class _ToolConditionSectionState extends State<ToolConditionSection> {
  int _selectedConditionIndex = 0;

  final List<String> _conditions = [
    'Good',
    'Needs Cleaning',
    'Needs Sharpening',
    'Damaged',
    'Missing'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Condition',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: List.generate(_conditions.length, (index) {
            final isSelected = _selectedConditionIndex == index;
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedConditionIndex = index;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.primaryGreen.withValues(alpha: 0.1) : Colors.white,
                  border: Border.all(
                    color: isSelected ? AppColors.primaryGreen : Colors.grey.shade300,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (isSelected) ...[
                      const Icon(Iconsax.tick_circle, color: AppColors.primaryGreen, size: 16),
                      const SizedBox(width: 6),
                    ],
                    Text(
                      _conditions[index],
                      style: TextStyle(
                        color: isSelected ? AppColors.primaryGreen : AppColors.textPrimary,
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
