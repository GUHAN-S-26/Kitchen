import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class UpdateQuantitySection extends StatelessWidget {
  const UpdateQuantitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Update Quantity',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          // Quantity Controller
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.softGreen,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(Icons.remove, color: AppColors.iconGreen),
              ),
              Column(
                children: [
                  Text(
                    '10',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Row(
                    children: [
                      Text(
                        'gram',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.keyboard_arrow_down, size: 16),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.softGreen,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(Icons.add, color: AppColors.iconGreen),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Quick Quantity Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _QuickButton(label: '+ 10 g'),
              _QuickButton(label: '+ 50 g'),
              _QuickButton(label: '+ 100 g'),
              _QuickButton(label: '+ 250 g'),
            ],
          ),
          const SizedBox(height: 24),
          // Action Buttons
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    color: AppColors.softGreen,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.arrow_downward, color: AppColors.iconGreen, size: 20),
                      const SizedBox(width: 8),
                      Text(
                        'Used',
                        style: TextStyle(
                          color: AppColors.iconGreen,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    color: AppColors.softOrange,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.arrow_upward, color: AppColors.iconOrange, size: 20),
                      const SizedBox(width: 8),
                      Text(
                        'Refill / Add',
                        style: TextStyle(
                          color: AppColors.iconOrange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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

class _QuickButton extends StatelessWidget {
  final String label;

  const _QuickButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.softGreen.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: AppColors.iconGreen,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
