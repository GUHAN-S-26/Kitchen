import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class ItemDetailHeader extends StatelessWidget {
  const ItemDetailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Iconsax.arrow_left, color: AppColors.textPrimary),
          ),
          Text(
            'Sugar',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Row(
            children: [
              const Icon(Iconsax.edit, color: AppColors.textPrimary),
              const SizedBox(width: 16),
              const Icon(Icons.more_horiz, color: AppColors.textPrimary),
            ],
          ),
        ],
      ),
    );
  }
}
