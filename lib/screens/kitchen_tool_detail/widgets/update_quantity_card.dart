import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../core/theme/app_colors.dart';

class UpdateQuantityCard extends StatelessWidget {
  final int quantity;
  final ValueChanged<int> onQuantityChanged;

  const UpdateQuantityCard({
    super.key,
    required this.quantity,
    required this.onQuantityChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Header
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: AppColors.softGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Iconsax.box_add,
                  size: 16,
                  color: AppColors.primaryGreen,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Update Quantity',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Main Quantity Controls: [ - ]  [ 1 Piece ]  [ + ]
          Row(
            children: [
              // Minus Button
              _buildRoundButton(
                icon: Icons.remove,
                onTap: () => onQuantityChanged(-1),
              ),
              const SizedBox(width: 12),

              // Quantity Display
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '$quantity',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                          ),
                          TextSpan(
                            text: '  Piece',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: AppColors.textSecondary,
                                  fontSize: 14,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),

              // Plus Button
              _buildRoundButton(
                icon: Icons.add,
                onTap: () => onQuantityChanged(1),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Quick Adjust Buttons
          Row(
            children: [
              Expanded(child: _buildQuickButton(context, '-2', -2)),
              const SizedBox(width: 10),
              Expanded(child: _buildQuickButton(context, '-1', -1)),
              const SizedBox(width: 10),
              Expanded(child: _buildQuickButton(context, '+1', 1)),
              const SizedBox(width: 10),
              Expanded(child: _buildQuickButton(context, '+2', 2)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRoundButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: 52,
        height: 52,
        decoration: BoxDecoration(
          color: AppColors.softGreen,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppColors.primaryGreen, width: 1.2),
        ),
        child: Icon(
          icon,
          color: AppColors.primaryGreen,
          size: 24,
        ),
      ),
    );
  }

  Widget _buildQuickButton(BuildContext context, String label, int delta) {
    return GestureDetector(
      onTap: () => onQuantityChanged(delta),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.primaryGreen, width: 1.2),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: AppColors.primaryGreen,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
