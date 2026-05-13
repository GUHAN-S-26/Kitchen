import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class BlockSearchActions extends StatelessWidget {
  const BlockSearchActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 16),
                  const Icon(Iconsax.search_normal, color: Colors.grey, size: 20),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search blocks or locations...',
                        hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 12),
          _buildActionButton('Filter', Iconsax.filter),
          const SizedBox(width: 12),
          _buildActionButton('Sort', Iconsax.arrow_swap),
        ],
      ),
    );
  }

  Widget _buildActionButton(String label, IconData icon) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Icon(icon, color: AppColors.textPrimary, size: 16),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
