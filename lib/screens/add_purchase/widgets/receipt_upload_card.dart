import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../core/theme/app_colors.dart';

class ReceiptUploadCard extends StatelessWidget {
  const ReceiptUploadCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Receipt Upload',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        // Simple dashed box visually, but we can't use dash_path easily without external package so we use a standard box for now
        // A common flutter workaround is using a dotted_border package, but since we rely on standard Material, we'll use a solid light border
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(16),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 32),
            decoration: BoxDecoration(
              color: AppColors.primaryGreen.withOpacity(0.05),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: AppColors.primaryGreen.withOpacity(0.3),
                width: 2,
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.primaryGreen.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Iconsax.camera, color: AppColors.primaryGreen, size: 32),
                ),
                const SizedBox(height: 16),
                Text(
                  'Add Photo',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryGreen,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Upload bill or receipt for reference',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
