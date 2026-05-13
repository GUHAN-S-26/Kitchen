import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class NotificationSectionTitle extends StatelessWidget {
  final String title;
  final bool showMarkAllRead;

  const NotificationSectionTitle({
    super.key,
    required this.title,
    this.showMarkAllRead = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        if (showMarkAllRead)
          TextButton(
            onPressed: () {
              // Mark all as read logic
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: const Size(50, 30),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Text(
              'Mark all as read',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.primaryGreen,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
      ],
    );
  }
}
