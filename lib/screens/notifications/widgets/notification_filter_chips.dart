import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class NotificationFilterChips extends StatefulWidget {
  const NotificationFilterChips({super.key});

  @override
  State<NotificationFilterChips> createState() => _NotificationFilterChipsState();
}

class _NotificationFilterChipsState extends State<NotificationFilterChips> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _filters = [
    {'label': 'All', 'count': 28},
    {'label': 'Low Stock', 'count': 10},
    {'label': 'Checklist', 'count': 7},
    {'label': 'Updates', 'count': 6},
    {'label': 'System', 'count': 5},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        children: List.generate(_filters.length, (index) {
          final isSelected = _selectedIndex == index;
          return Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: ChoiceChip(
              label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(_filters[index]['label'] as String),
                  const SizedBox(width: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: isSelected 
                          ? Colors.white.withValues(alpha: 0.2) 
                          : AppColors.primaryGreen.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '${_filters[index]['count']}',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: isSelected ? Colors.white : AppColors.primaryGreen,
                      ),
                    ),
                  ),
                ],
              ),
              selected: isSelected,
              onSelected: (bool selected) {
                setState(() {
                  if (selected) {
                    _selectedIndex = index;
                  }
                });
              },
              backgroundColor: Colors.white,
              selectedColor: AppColors.primaryGreen,
              labelStyle: TextStyle(
                color: isSelected ? Colors.white : AppColors.textSecondary,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  color: isSelected ? AppColors.primaryGreen : Colors.grey.shade200,
                ),
              ),
              elevation: isSelected ? 4 : 0,
              shadowColor: AppColors.primaryGreen.withValues(alpha: 0.3),
            ),
          );
        }),
      ),
    );
  }
}
