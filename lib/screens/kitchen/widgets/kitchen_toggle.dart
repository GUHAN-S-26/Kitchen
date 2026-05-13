import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class KitchenToggle extends StatefulWidget {
  const KitchenToggle({super.key});

  @override
  State<KitchenToggle> createState() => _KitchenToggleState();
}

class _KitchenToggleState extends State<KitchenToggle> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  margin: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: _selectedIndex == 0
                        ? AppColors.primaryGreen
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Iconsax.shop,
                          size: 20,
                          color: _selectedIndex == 0
                              ? Colors.white
                              : AppColors.textSecondary,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Grocery',
                          style: TextStyle(
                            color: _selectedIndex == 0
                                ? Colors.white
                                : AppColors.textSecondary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  margin: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: _selectedIndex == 1
                        ? AppColors.primaryGreen
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Iconsax.box,
                          size: 20,
                          color: _selectedIndex == 1
                              ? Colors.white
                              : AppColors.textSecondary,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Kitchen Tools',
                          style: TextStyle(
                            color: _selectedIndex == 1
                                ? Colors.white
                                : AppColors.textSecondary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
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
