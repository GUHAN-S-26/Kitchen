import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';
import '../../item_detail/item_detail_screen.dart';

class GroceryItemCard extends StatelessWidget {
  final String name;
  final String location;
  final String status;
  final String quantity;
  final Color progressBarColor;
  final double progress;
  final IconData placeholderIcon;

  const GroceryItemCard({
    super.key,
    required this.name,
    required this.location,
    required this.status,
    required this.quantity,
    required this.progressBarColor,
    required this.progress,
    required this.placeholderIcon,
  });

  @override
  Widget build(BuildContext context) {
    final bool isLowStock = status.toLowerCase().contains('low stock');

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ItemDetailScreen()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16.0, left: 24.0, right: 24.0),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // Image Placeholder
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: isLowStock ? AppColors.softOrange : AppColors.softGreen,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              placeholderIcon,
              color: isLowStock ? AppColors.iconOrange : AppColors.iconGreen,
              size: 30,
            ),
          ),
          const SizedBox(width: 16),
          // Details
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
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 4),
                Text(
                  status,
                  style: TextStyle(
                    color: isLowStock ? AppColors.iconOrange : AppColors.primaryGreen,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          // Quantity and Progress
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                quantity.split(' ')[0] + (quantity.split(' ').length > 1 ? ' ${quantity.split(' ')[1]}' : ''),
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'Left',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 8),
              Container(
                width: 60,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: progress,
                  child: Container(
                    decoration: BoxDecoration(
                      color: progressBarColor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
          const Icon(Icons.chevron_right, color: AppColors.textSecondary),
        ],
      ),
      ),
    );
  }
}
