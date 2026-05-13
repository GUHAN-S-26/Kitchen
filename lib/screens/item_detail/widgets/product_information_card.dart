import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class ProductInformationCard extends StatelessWidget {
  const ProductInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left Image placeholder
            Container(
              width: 80,
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.softOrange,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Center(
                child: Icon(Iconsax.box, color: AppColors.iconOrange, size: 40),
              ),
            ),
            const SizedBox(width: 16),
            // Center Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Sugar',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.softGreen,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 6,
                          height: 6,
                          decoration: const BoxDecoration(
                            color: AppColors.primaryGreen,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          'In Stock',
                          style: TextStyle(
                            color: AppColors.primaryGreen,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Icon(Iconsax.location, size: 14, color: AppColors.textSecondary),
                      const SizedBox(width: 4),
                      Text(
                        'Kitchen • Block A',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'White granulated sugar',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textSecondary.withOpacity(0.7),
                        ),
                  ),
                ],
              ),
            ),
            // Right Side Quantity Card
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.softGreen,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Text(
                    '1 kg',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.iconGreen,
                        ),
                  ),
                  Text(
                    'Left',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.iconGreen.withOpacity(0.8),
                        ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: 0.5,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.primaryGreen,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '/ 2 kg',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.iconGreen.withOpacity(0.8),
                          fontSize: 10,
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
