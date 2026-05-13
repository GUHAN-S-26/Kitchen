import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../core/theme/app_colors.dart';

class SaveUsageButton extends StatelessWidget {
  const SaveUsageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton.icon(
        onPressed: () {
          // Add save logic here
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 0,
        ),
        icon: const Icon(Iconsax.tick_circle, color: Colors.white),
        label: Text(
          'Save Usage',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
