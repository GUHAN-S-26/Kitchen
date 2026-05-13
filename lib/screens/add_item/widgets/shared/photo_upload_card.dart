import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../core/theme/app_colors.dart';

class PhotoUploadCard extends StatelessWidget {
  final VoidCallback? onTap;

  const PhotoUploadCard({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: AppColors.softGreen,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColors.primaryGreen.withValues(alpha: 0.3),
            style: BorderStyle.solid,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Iconsax.camera, color: AppColors.iconGreen, size: 30),
            const SizedBox(height: 6),
            Text(
              'Add Photo',
              style: TextStyle(
                color: AppColors.iconGreen,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
