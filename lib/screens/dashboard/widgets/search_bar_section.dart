import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class SearchBarSection extends StatelessWidget {
  const SearchBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        children: [
          Expanded(
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
                  hintText: 'Search grocery or kitchen tools...',
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppColors.primaryGreen,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryGreen.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Icon(
              Iconsax.scan_barcode,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
