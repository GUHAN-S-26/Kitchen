import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';
import 'grocery_item_card.dart';

class GroceryItemsSection extends StatelessWidget {
  const GroceryItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        'name': 'Sugar',
        'location': 'Kitchen • Block A',
        'status': 'In Stock',
        'quantity': '1 kg Left',
        'progressBarColor': AppColors.primaryGreen,
        'progress': 0.8,
        'icon': Iconsax.box,
      },
      {
        'name': 'Rice',
        'location': 'Kitchen • Block B',
        'status': 'In Stock',
        'quantity': '5 kg Left',
        'progressBarColor': AppColors.primaryGreen,
        'progress': 0.7,
        'icon': Iconsax.box,
      },
      {
        'name': 'Salt',
        'location': 'Kitchen • Block D',
        'status': 'Low Stock',
        'quantity': '20 g Left',
        'progressBarColor': AppColors.iconOrange,
        'progress': 0.1,
        'icon': Iconsax.box,
      },
      {
        'name': 'Oil',
        'location': 'Kitchen • Block C',
        'status': 'Low Stock',
        'quantity': '100 ml Left',
        'progressBarColor': AppColors.iconOrange,
        'progress': 0.2,
        'icon': Iconsax.glass,
      },
      {
        'name': 'Toor Dal',
        'location': 'Kitchen • Block B',
        'status': 'In Stock',
        'quantity': '500 g Left',
        'progressBarColor': AppColors.primaryGreen,
        'progress': 0.6,
        'icon': Iconsax.box,
      },
      {
        'name': 'Wheat Flour',
        'location': 'Kitchen • Block A',
        'status': 'In Stock',
        'quantity': '2 kg Left',
        'progressBarColor': AppColors.primaryGreen,
        'progress': 0.9,
        'icon': Iconsax.box,
      },
    ];

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
          ...items.map((item) => GroceryItemCard(
                name: item['name'],
                location: item['location'],
                status: item['status'],
                quantity: item['quantity'],
                progressBarColor: item['progressBarColor'],
                progress: item['progress'],
                placeholderIcon: item['icon'] ?? Iconsax.box,
              )),
        ]),
      ),
    );
  }
}
