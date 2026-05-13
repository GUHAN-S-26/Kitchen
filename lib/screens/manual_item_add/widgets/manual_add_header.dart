import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class ManualAddHeader extends StatelessWidget {
  const ManualAddHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
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
                  'Add Item Manually',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                ),
                Text(
                  'Add items you want to buy later',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
              ],
            ),
          ),
          const Icon(Iconsax.message_question, color: AppColors.textPrimary, size: 24),
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
    );
  }
}
