import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class AboutStorageSection extends StatelessWidget {
  const AboutStorageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Storage',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          Container(
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
                        'Kitchen • Block A',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.iconGreen,
                            ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Top Shelf • Left Side',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: AppColors.iconGreen.withOpacity(0.8),
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Change Location',
                        style: TextStyle(
                          color: AppColors.primaryGreen,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.chevron_right, color: AppColors.primaryGreen, size: 14),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
