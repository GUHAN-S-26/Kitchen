import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../core/theme/app_colors.dart';
import '../../kitchen/widgets/kitchen_tool_status_badge.dart';

class ToolOverviewCard extends StatelessWidget {
  const ToolOverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: Row(
        children: [
          // Tool Image
          Container(
            width: 120,
            height: 130,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F4F0),
              borderRadius: BorderRadius.circular(16),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                'https://images.unsplash.com/photo-1593455986872-9fa94fb5742a?w=500&q=80',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Iconsax.box,
                    color: AppColors.primaryGreen,
                    size: 36,
                  );
                },
              ),
            ),
          ),
          const SizedBox(width: 16),

          // Tool Info + Quantity
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Tool Name
                Text(
                  'Chef Knife',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),

                // Status Badge
                const KitchenToolStatusBadge(status: ToolStatus.available),
                const SizedBox(height: 14),

                // Detail Rows + Quantity
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Location Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildDetailRow(
                            context,
                            icon: Iconsax.location,
                            text: 'Kitchen',
                          ),
                          const SizedBox(height: 6),
                          _buildDetailRow(
                            context,
                            icon: Iconsax.box,
                            text: 'Drawer A',
                          ),
                          const SizedBox(height: 6),
                          _buildDetailRow(
                            context,
                            icon: Iconsax.category,
                            text: 'Cutlery',
                          ),
                        ],
                      ),
                    ),

                    // Quantity
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Quantity',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: AppColors.textSecondary,
                                    fontSize: 11,
                                  ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '1',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryGreen,
                                fontSize: 32,
                                height: 1,
                              ),
                        ),
                        Text(
                          'Piece',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: AppColors.textSecondary,
                                    fontSize: 12,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(
    BuildContext context, {
    required IconData icon,
    required String text,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: AppColors.textSecondary),
        const SizedBox(width: 6),
        Flexible(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textSecondary,
                  fontSize: 13,
                ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
