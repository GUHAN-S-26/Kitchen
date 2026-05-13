import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class AddItemToggle extends StatelessWidget {
  final bool isGrocerySelected;
  final ValueChanged<bool> onToggle;

  const AddItemToggle({
    super.key,
    required this.isGrocerySelected,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            _buildTab(
              label: 'Grocery',
              icon: Iconsax.shop,
              isActive: isGrocerySelected,
              onTap: () => onToggle(true),
            ),
            _buildTab(
              label: 'Kitchen Tool',
              icon: Iconsax.setting_4,
              isActive: !isGrocerySelected,
              onTap: () => onToggle(false),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab({
    required String label,
    required IconData icon,
    required bool isActive,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            color: isActive ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            boxShadow: isActive
                ? [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.06),
                      blurRadius: 12,
                      offset: const Offset(0, 3),
                    ),
                  ]
                : [],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 18,
                color: isActive ? AppColors.primaryGreen : AppColors.textSecondary,
              ),
              const SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(
                  color: isActive ? AppColors.primaryGreen : AppColors.textSecondary,
                  fontWeight: isActive ? FontWeight.bold : FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
