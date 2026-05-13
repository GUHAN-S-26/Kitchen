import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../core/theme/app_colors.dart';
import '../../add_item/widgets/shared/custom_input.dart';

class PurchaseItemSelector extends StatelessWidget {
  const PurchaseItemSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Item',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: const CustomInput(
                hintText: 'Search item (e.g. Rice, Sugar, Oil)',
                prefixIcon: Iconsax.search_normal,
              ),
            ),
            const SizedBox(width: 12),
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                color: AppColors.primaryGreen.withOpacity(0.1),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppColors.primaryGreen.withOpacity(0.3)),
              ),
              child: IconButton(
                icon: const Icon(Iconsax.setting_4, color: AppColors.primaryGreen),
                onPressed: () {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        // Selected Item Card
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.cardBackground,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey.shade200),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.02),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Icon(Iconsax.box, color: Colors.orange),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Basmati Rice',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Kitchen • Block A • Top Shelf',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 12,
                        color: AppColors.textSecondary,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Icon(Iconsax.arrow_down_1, color: AppColors.textSecondary, size: 20),
            ],
          ),
        ),
      ],
    );
  }
}
