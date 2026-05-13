import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class BlockTipBanner extends StatelessWidget {
  const BlockTipBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.softBlue.withOpacity(0.3),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Iconsax.lamp_on, color: AppColors.iconBlue, size: 24),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tip',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Organize your blocks to easily find and manage items.',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.close, color: Colors.grey, size: 20),
          ],
        ),
      ),
    );
  }
}
