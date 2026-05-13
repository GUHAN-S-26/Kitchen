import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../core/theme/app_colors.dart';
import 'unread_indicator.dart';

enum NotificationType {
  lowStock,
  checklist,
  update,
  system,
}

class NotificationCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final NotificationType type;
  final String location;
  final String timestamp;
  final bool isUnread;

  const NotificationCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.type,
    required this.location,
    required this.timestamp,
    this.isUnread = false,
  });

  @override
  Widget build(BuildContext context) {
    IconData getIcon() {
      switch (type) {
        case NotificationType.lowStock:
          return Iconsax.warning_2;
        case NotificationType.checklist:
          return Iconsax.shopping_cart;
        case NotificationType.update:
          return Iconsax.tick_circle;
        case NotificationType.system:
          return Iconsax.setting_2;
      }
    }

    Color getColor() {
      switch (type) {
        case NotificationType.lowStock:
          return Colors.orange;
        case NotificationType.checklist:
          return Colors.blue;
        case NotificationType.update:
          return AppColors.primaryGreen;
        case NotificationType.system:
          return Colors.purple;
      }
    }

    final Color iconColor = getColor();

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isUnread ? Colors.white : AppColors.cardBackground.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isUnread ? AppColors.primaryGreen.withValues(alpha: 0.2) : Colors.grey.shade100,
        ),
        boxShadow: isUnread
            ? [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.03),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ]
            : [],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: iconColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(getIcon(), color: iconColor, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: isUnread ? FontWeight.bold : FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    if (isUnread) const UnreadIndicator(),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$location • $timestamp',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // show popup menu
                      },
                      child: const Icon(
                        Icons.more_horiz,
                        size: 18,
                        color: AppColors.textSecondary,
                      ),
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
}
