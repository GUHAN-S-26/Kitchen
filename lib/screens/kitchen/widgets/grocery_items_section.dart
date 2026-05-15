import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';
import '../../../providers/grocery/grocery_provider.dart';
import 'grocery_item_card.dart';

class GroceryItemsSection extends ConsumerWidget {
  const GroceryItemsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groceries = ref.watch(groceryProvider);

    return SliverPadding(
      padding: const EdgeInsets.only(top: 24.0),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grocery Items',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Row(
                  children: [
                    Text(
                      'Sort by: Name',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.keyboard_arrow_down, size: 16, color: AppColors.textSecondary),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Empty state
          if (groceries.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: AppColors.softGreen,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Iconsax.box, size: 40, color: AppColors.iconGreen),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'No grocery items yet',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Tap the + button to add your first grocery item',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.textSecondary,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            )
          else
            ...groceries.map((item) => GroceryItemCard(
                  name: item.name,
                  location: item.block.isNotEmpty ? item.block : 'No block set',
                  status: item.statusLabel,
                  quantity: item.quantityDisplay,
                  progressBarColor: item.isLowStock ? AppColors.iconOrange : AppColors.primaryGreen,
                  progress: item.stockProgress,
                  placeholderIcon: Iconsax.box,
                )),
        ]),
      ),
    );
  }
}
