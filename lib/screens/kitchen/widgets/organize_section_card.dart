import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';
import '../../block_management/block_management_screen.dart';

class OrganizeSectionCard extends StatelessWidget {
  const OrganizeSectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BlockManagementScreen()),
          );
        },
        child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.softGreen,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.primaryGreen.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(Iconsax.box, color: AppColors.primaryGreen, size: 32),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Organize items by Blocks',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.iconGreen,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Easily find items in your kitchen.',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.iconGreen.withOpacity(0.8),
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Text(
                    'Manage Blocks',
                    style: TextStyle(
                      color: AppColors.primaryGreen,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.chevron_right, color: AppColors.primaryGreen, size: 16),
                ],
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
