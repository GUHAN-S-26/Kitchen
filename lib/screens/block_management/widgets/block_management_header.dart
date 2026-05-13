import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class BlockManagementHeader extends StatelessWidget {
  const BlockManagementHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back, color: AppColors.textPrimary, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Block Management',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                        fontSize: 22,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Manage your kitchen blocks, drawers and shelves.',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  const Icon(Iconsax.notification, color: AppColors.textPrimary),
                  Positioned(
                    right: -2,
                    top: -2,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: AppColors.iconRed,
                        shape: BoxShape.circle,
                      ),
                      child: const Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.softOrange,
                ),
                child: ClipOval(
                  child: Image.network(
                    'https://i.pravatar.cc/150?img=11',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
