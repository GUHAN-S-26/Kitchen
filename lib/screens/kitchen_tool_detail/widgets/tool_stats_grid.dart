import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../core/theme/app_colors.dart';

class ToolStatsGrid extends StatelessWidget {
  const ToolStatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = constraints.maxWidth > 600 ? 4 : 2;
        return GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.6,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            _buildStatCard(
              context,
              title: 'Total Pieces',
              value: '1 Piece',
              icon: Iconsax.box,
              iconColor: Colors.blue.shade700,
              bgColor: Colors.blue.withValues(alpha: 0.1),
            ),
            _buildStatCard(
              context,
              title: 'Available',
              value: '1 Piece',
              icon: Iconsax.tick_circle,
              iconColor: Colors.green.shade700,
              bgColor: Colors.green.withValues(alpha: 0.1),
            ),
            _buildStatCard(
              context,
              title: 'In Use',
              value: '0 Piece',
              icon: Iconsax.clock,
              iconColor: Colors.orange.shade700,
              bgColor: Colors.orange.withValues(alpha: 0.1),
            ),
            _buildStatCard(
              context,
              title: 'Last Used',
              value: 'Today\n08:30 AM',
              icon: Iconsax.calendar_1,
              iconColor: Colors.purple.shade700,
              bgColor: Colors.purple.withValues(alpha: 0.1),
              isMultiline: true,
            ),
          ],
        );
      },
    );
  }

  Widget _buildStatCard(
    BuildContext context, {
    required String title,
    required String value,
    required IconData icon,
    required Color iconColor,
    required Color bgColor,
    bool isMultiline = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: bgColor,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: iconColor, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: isMultiline ? 12 : 14,
                        height: isMultiline ? 1.2 : null,
                      ),
                  maxLines: isMultiline ? 2 : 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
