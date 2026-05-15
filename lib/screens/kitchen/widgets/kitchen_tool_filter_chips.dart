import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class KitchenToolFilterChips extends StatefulWidget {
  const KitchenToolFilterChips({super.key});

  @override
  State<KitchenToolFilterChips> createState() => _KitchenToolFilterChipsState();
}

class _KitchenToolFilterChipsState extends State<KitchenToolFilterChips> {
  int _selectedIndex = 0;
  final List<String> _categories = [
    'All',
    'Cooking',
    'Storage',
    'Cleaning',
    'Others'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          final isSelected = _selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isSelected ? AppColors.primaryGreen : Colors.grey.shade300,
                  width: 1.5,
                ),
              ),
              child: Center(
                child: Text(
                  _categories[index],
                  style: TextStyle(
                    color: isSelected ? AppColors.primaryGreen : AppColors.textPrimary,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
