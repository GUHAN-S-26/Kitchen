import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class BlockFilterChips extends StatefulWidget {
  const BlockFilterChips({super.key});

  @override
  State<BlockFilterChips> createState() => _BlockFilterChipsState();
}

class _BlockFilterChipsState extends State<BlockFilterChips> {
  int _selectedIndex = 0;
  final List<String> _blocks = ['All', 'Block A', 'Block B', 'Block C', 'Block D'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        itemCount: _blocks.length,
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
                color: isSelected ? Colors.transparent : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isSelected ? AppColors.primaryGreen : Colors.grey.shade300,
                  width: 1.5,
                ),
              ),
              child: Center(
                child: Text(
                  _blocks[index],
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
