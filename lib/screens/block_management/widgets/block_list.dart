import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class BlockList extends StatelessWidget {
  const BlockList({super.key});

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
                'All Blocks (8)',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Row(
                children: [
                  Text(
                    'View by: Name',
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
          _BlockCard(
            name: 'Block A',
            type: 'Block',
            description: 'Main storage for groceries and dry items.',
            itemsCount: '28 Items',
            status: '3 Low Stock',
            isStatusWarning: true,
            iconColor: AppColors.softBlue,
            actualIconColor: AppColors.iconBlue,
          ),
          const SizedBox(height: 16),
          _BlockCard(
            name: 'Drawer B',
            type: 'Drawer',
            description: 'Cutlery, knives and small tools.',
            itemsCount: '18 Items',
            status: '2 Low Stock',
            isStatusWarning: true,
            iconColor: AppColors.softOrange,
            actualIconColor: AppColors.iconOrange,
          ),
          const SizedBox(height: 16),
          _BlockCard(
            name: 'Shelf C',
            type: 'Shelf',
            description: 'Cups, mugs, glasses and bowls.',
            itemsCount: '22 Items',
            status: 'All Good',
            isStatusWarning: false,
            iconColor: AppColors.softGreen,
            actualIconColor: AppColors.iconGreen,
          ),
          const SizedBox(height: 16),
          _BlockCard(
            name: 'Block D',
            type: 'Block',
            description: 'Cooking essentials and masalas.',
            itemsCount: '30 Items',
            status: '4 Low Stock',
            isStatusWarning: true,
            iconColor: AppColors.softPink,
            actualIconColor: AppColors.iconPink,
          ),
          const SizedBox(height: 16),
          _BlockCard(
            name: 'Drawer A',
            type: 'Drawer',
            description: 'Serving spoons, ladles and tools.',
            itemsCount: '15 Items',
            status: 'All Good',
            isStatusWarning: false,
            iconColor: AppColors.softYellow,
            actualIconColor: AppColors.iconYellow,
          ),
          const SizedBox(height: 16),
          _BlockCard(
            name: 'Shelf E',
            type: 'Shelf',
            description: 'Plates and serving dishes.',
            itemsCount: '20 Items',
            status: '2 Low Stock',
            isStatusWarning: true,
            iconColor: AppColors.softBlue,
            actualIconColor: AppColors.iconBlue,
          ),
        ],
      ),
    );
  }
}

class _BlockCard extends StatelessWidget {
  final String name;
  final String type;
  final String description;
  final String itemsCount;
  final String status;
  final bool isStatusWarning;
  final Color iconColor;
  final Color actualIconColor;

  const _BlockCard({
    required this.name,
    required this.type,
    required this.description,
    required this.itemsCount,
    required this.status,
    required this.isStatusWarning,
    required this.iconColor,
    required this.actualIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: iconColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Iconsax.box, color: actualIconColor, size: 24),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: AppColors.softBlue.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            type,
                            style: const TextStyle(
                              color: AppColors.iconBlue,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.textSecondary,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 12,
                      runSpacing: 4,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Iconsax.bag_2, size: 14, color: AppColors.textSecondary),
                            const SizedBox(width: 4),
                            Text(
                              itemsCount,
                              style: const TextStyle(
                                color: AppColors.textSecondary,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              isStatusWarning ? Icons.warning_rounded : Icons.check_circle_outline,
                              size: 14,
                              color: isStatusWarning ? AppColors.iconRed : AppColors.iconGreen,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              status,
                              style: TextStyle(
                                color: isStatusWarning ? AppColors.iconRed : AppColors.iconGreen,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                        'Active',
                        style: TextStyle(
                          color: AppColors.primaryGreen,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.more_vert, color: Colors.grey, size: 20),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: const [
                        Text(
                          'Open',
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(Icons.chevron_right, size: 16, color: AppColors.textPrimary),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
