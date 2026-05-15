import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../core/theme/app_colors.dart';

class KitchenToolDetailHeader extends StatelessWidget {
  const KitchenToolDetailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 4.0),
      child: Row(
        children: [
          // Back Button
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back,
              size: 24,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(width: 16),

          // Title
          Text(
            'Kitchen Tool Detail',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
          ),

          const Spacer(),

          // Edit Button
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: AppColors.softGreen,
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(
              Iconsax.edit,
              size: 20,
              color: AppColors.primaryGreen,
            ),
          ),
        ],
      ),
    );
  }
}
