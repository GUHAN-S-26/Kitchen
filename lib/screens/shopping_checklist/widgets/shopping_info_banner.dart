import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class ShoppingInfoBanner extends StatelessWidget {
  const ShoppingInfoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.softBlue.withOpacity(0.4),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Iconsax.info_circle, color: AppColors.iconBlue, size: 24),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'These items are added based on low stock and reminders.',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  const SizedBox(height: 4),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Learn more',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.iconBlue,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Row(
                children: [
                  const Icon(Iconsax.setting_2, size: 14, color: AppColors.iconBlue),
                  const SizedBox(width: 4),
                  Text(
                    'Settings',
                    style: TextStyle(
                      color: AppColors.iconBlue,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
