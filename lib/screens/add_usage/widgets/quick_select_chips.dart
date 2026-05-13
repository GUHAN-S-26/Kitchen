import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class QuickSelectChips extends StatefulWidget {
  const QuickSelectChips({super.key});

  @override
  State<QuickSelectChips> createState() => _QuickSelectChipsState();
}

class _QuickSelectChipsState extends State<QuickSelectChips> {
  final List<String> quantities = ['+10 g', '+50 g', '+100 g', '+250 g', '+500 g'];
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: List.generate(quantities.length, (index) {
        final isSelected = selectedIndex == index;
        return InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          borderRadius: BorderRadius.circular(20),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.primaryGreen.withOpacity(0.1) : Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: isSelected ? AppColors.primaryGreen : Colors.grey.shade300,
                width: 1.5,
              ),
            ),
            child: Text(
              quantities[index],
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: isSelected ? AppColors.primaryGreen : AppColors.textSecondary,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
              ),
            ),
          ),
        );
      }),
    );
  }
}
