import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class KitchenSearchBar extends StatelessWidget {
  const KitchenSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            icon: const Icon(Iconsax.search_normal, color: AppColors.textSecondary),
            hintText: 'Search grocery items...',
            hintStyle: Theme.of(context).textTheme.bodyMedium,
            border: InputBorder.none,
            suffixIcon: const Icon(Iconsax.setting_4, color: AppColors.textSecondary), // Filter icon
          ),
        ),
      ),
    );
  }
}
