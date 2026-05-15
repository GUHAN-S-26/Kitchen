import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class LowStockSection extends StatelessWidget {
  const LowStockSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Low Stock',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View All',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const _LowStockItemCard(
            name: 'Sugar',
            location: 'Kitchen • Block A',
            quantity: '40 g',
            imageUrl: 'https://picsum.photos/seed/sugar2/150/150', // placeholder
          ),
          const SizedBox(height: 12),
          const _LowStockItemCard(
            name: 'Salt',
            location: 'Kitchen • Block D',
            quantity: '20 g',
            imageUrl: 'https://picsum.photos/seed/salt/150/150', // Milk placeholder
          ),
          const SizedBox(height: 12),
          const _LowStockItemCard(
            name: 'Oil',
            location: 'Kitchen • Block C',
            quantity: '100 ml',
            imageUrl: 'https://picsum.photos/seed/oil2/150/150', // placeholder
          ),
        ],
      ),
    );
  }
}

class _LowStockItemCard extends StatelessWidget {
  final String name;
  final String location;
  final String quantity;
  final String imageUrl;

  const _LowStockItemCard({
    required this.name,
    required this.location,
    required this.quantity,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.background,
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  location,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.softRed,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Low Stock',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: AppColors.iconRed,
                              fontSize: 10,
                            ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '• $quantity left',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: AppColors.textSecondary,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Iconsax.arrow_right_3,
              size: 20,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
