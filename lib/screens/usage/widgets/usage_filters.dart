import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class UsageFilters extends StatelessWidget {
  const UsageFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Row(
                children: [
                  const Icon(Iconsax.calendar_1, size: 18, color: AppColors.textSecondary),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      'This Week',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_down, size: 18, color: AppColors.textSecondary),
                ],
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Row(
                children: [
                  const Icon(Iconsax.location, size: 18, color: AppColors.textSecondary),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      'All Blocks',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_down, size: 18, color: AppColors.textSecondary),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
