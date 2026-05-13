import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class AddItemToggle extends StatefulWidget {
  const AddItemToggle({super.key});

  @override
  State<AddItemToggle> createState() => _AddItemToggleState();
}

class _AddItemToggleState extends State<AddItemToggle> {
  bool isGrocerySelected = true;

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
            Expanded(
              child: GestureDetector(
                onTap: () => setState(() => isGrocerySelected = true),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: isGrocerySelected ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: isGrocerySelected
                        ? [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 10,
                              offset: const Offset(0, 2),
                            ),
                          ]
                        : [],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Iconsax.shop,
                        size: 18,
                        color: isGrocerySelected ? AppColors.primaryGreen : AppColors.textSecondary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Grocery',
                        style: TextStyle(
                          color: isGrocerySelected ? AppColors.primaryGreen : AppColors.textSecondary,
                          fontWeight: isGrocerySelected ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => setState(() => isGrocerySelected = false),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: !isGrocerySelected ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: !isGrocerySelected
                        ? [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 10,
                              offset: const Offset(0, 2),
                            ),
                          ]
                        : [],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Iconsax.reserve, // Using reserve as a kitchen tool icon placeholder
                        size: 18,
                        color: !isGrocerySelected ? AppColors.primaryGreen : AppColors.textSecondary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Kitchen Tool',
                        style: TextStyle(
                          color: !isGrocerySelected ? AppColors.primaryGreen : AppColors.textSecondary,
                          fontWeight: !isGrocerySelected ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
