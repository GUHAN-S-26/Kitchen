import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../core/theme/app_colors.dart';

class EmptyNotificationState extends StatelessWidget {
  const EmptyNotificationState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.primaryGreen.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Iconsax.notification_1,
                size: 64,
                color: AppColors.primaryGreen,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'No notifications yet',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Your kitchen updates will appear here.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 32),
            TextButton.icon(
              onPressed: () {
                // Refresh logic
              },
              icon: const Icon(Iconsax.refresh, color: AppColors.primaryGreen),
              label: const Text(
                'Refresh',
                style: TextStyle(
                  color: AppColors.primaryGreen,
                  fontWeight: FontWeight.w600,
                ),
              ),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                backgroundColor: AppColors.primaryGreen.withValues(alpha: 0.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
