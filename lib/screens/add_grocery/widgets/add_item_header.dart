import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class AddItemHeader extends StatelessWidget {
  final VoidCallback? onBackPressed;
  
  const AddItemHeader({super.key, this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              if (onBackPressed != null) {
                onBackPressed!();
              } else {
                Navigator.pop(context);
              }
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 4.0),
              child: Icon(Iconsax.arrow_left, color: AppColors.textPrimary),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add Item',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Add new grocery or kitchen tool',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  const Icon(Iconsax.notification, color: AppColors.textPrimary),
                  Positioned(
                    right: -2,
                    top: -2,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: AppColors.iconRed,
                        shape: BoxShape.circle,
                      ),
                      child: const Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.softOrange,
                ),
                child: ClipOval(
                  child: Image.network(
                    'https://i.pravatar.cc/150?img=11',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
