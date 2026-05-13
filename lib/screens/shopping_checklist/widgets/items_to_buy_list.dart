import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class ItemsToBuyList extends StatelessWidget {
  const ItemsToBuyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Items to Buy (5)',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Row(
                children: [
                  Text(
                    'Sort by: Priority',
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.keyboard_arrow_down, size: 16, color: AppColors.textSecondary),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          _ShoppingItemCard(
            name: 'Sugar',
            location: 'Kitchen • Block A',
            isLowStock: true,
            statusText: 'Low Stock',
            remaining: '1 kg left',
            buyQuantity: '2 kg',
            icon: Iconsax.box,
            iconColor: AppColors.softRed,
            actualIconColor: AppColors.iconRed,
          ),
          const SizedBox(height: 16),
          _ShoppingItemCard(
            name: 'Oil',
            location: 'Kitchen • Block C',
            isLowStock: true,
            statusText: 'Low Stock',
            remaining: '100 ml left',
            buyQuantity: '1 L',
            icon: Iconsax.glass,
            iconColor: AppColors.softOrange,
            actualIconColor: AppColors.iconOrange,
          ),
          const SizedBox(height: 16),
          _ShoppingItemCard(
            name: 'Salt',
            location: 'Kitchen • Block D',
            isLowStock: true,
            statusText: 'Low Stock',
            remaining: '20 g left',
            buyQuantity: '500 g',
            icon: Iconsax.box,
            iconColor: AppColors.softPurple,
            actualIconColor: AppColors.iconPurple,
          ),
          const SizedBox(height: 16),
          _ShoppingItemCard(
            name: 'Rice',
            location: 'Kitchen • Block B',
            isLowStock: false,
            statusText: 'Running Low',
            remaining: '1 kg left',
            buyQuantity: '2 kg',
            icon: Iconsax.box,
            iconColor: AppColors.softGreen,
            actualIconColor: AppColors.iconGreen,
          ),
          const SizedBox(height: 16),
          _ShoppingItemCard(
            name: 'Toor Dal',
            location: 'Kitchen • Block B',
            isLowStock: false,
            statusText: 'Running Low',
            remaining: '250 g left',
            buyQuantity: '1 kg',
            icon: Iconsax.box,
            iconColor: AppColors.softOrange,
            actualIconColor: AppColors.iconOrange,
          ),
        ],
      ),
    );
  }
}

class _ShoppingItemCard extends StatelessWidget {
  final String name;
  final String location;
  final bool isLowStock;
  final String statusText;
  final String remaining;
  final String buyQuantity;
  final IconData icon;
  final Color iconColor;
  final Color actualIconColor;

  const _ShoppingItemCard({
    required this.name,
    required this.location,
    required this.isLowStock,
    required this.statusText,
    required this.remaining,
    required this.buyQuantity,
    required this.icon,
    required this.iconColor,
    required this.actualIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.grey.shade300, width: 2),
                ),
              ),
              const SizedBox(width: 16),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: iconColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(icon, color: actualIconColor, size: 28),
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
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: isLowStock ? AppColors.softRed : AppColors.softOrange,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            statusText,
                            style: TextStyle(
                              color: isLowStock ? AppColors.iconRed : AppColors.iconOrange,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          remaining,
                          style: TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
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
                  Row(
                    children: [
                      Text(
                        buyQuantity,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Iconsax.edit_2, size: 14, color: AppColors.textSecondary),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(height: 1, color: Color(0xFFEEEEEE)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.primaryGreen),
                ),
                child: Row(
                  children: [
                    const Icon(Iconsax.shopping_cart, size: 16, color: AppColors.primaryGreen),
                    const SizedBox(width: 8),
                    Text(
                      'Mark Purchased',
                      style: TextStyle(
                        color: AppColors.primaryGreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
