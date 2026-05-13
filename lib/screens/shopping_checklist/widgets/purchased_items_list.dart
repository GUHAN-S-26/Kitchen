import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class PurchasedItemsList extends StatelessWidget {
  const PurchasedItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              tilePadding: EdgeInsets.zero,
              title: Text(
                'Purchased (2)',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              initiallyExpanded: true,
              children: [
                _PurchasedItemCard(
                  name: 'Wheat Flour',
                  location: 'Kitchen • Block A',
                  quantity: '2 kg',
                  date: 'Purchased on 10 May 2024',
                  icon: Iconsax.box,
                ),
                const SizedBox(height: 12),
                _PurchasedItemCard(
                  name: 'Masoor Dal',
                  location: 'Kitchen • Block B',
                  quantity: '1 kg',
                  date: 'Purchased on 09 May 2024',
                  icon: Iconsax.box,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PurchasedItemCard extends StatelessWidget {
  final String name;
  final String location;
  final String quantity;
  final String date;
  final IconData icon;

  const _PurchasedItemCard({
    required this.name,
    required this.location,
    required this.quantity,
    required this.date,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.softGreen.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: AppColors.primaryGreen,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.check, color: Colors.white, size: 14),
          ),
          const SizedBox(width: 16),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.grey.shade400),
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
                        color: Colors.grey.shade600,
                        decoration: TextDecoration.lineThrough,
                      ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Iconsax.location, size: 12, color: AppColors.textSecondary),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        location,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: AppColors.textSecondary,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Buy',
                style: TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 10,
                ),
              ),
              Text(
                quantity,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade500,
                      decoration: TextDecoration.lineThrough,
                    ),
              ),
              const SizedBox(height: 12),
              Text(
                date,
                style: TextStyle(
                  color: AppColors.primaryGreen,
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
