import 'package:flutter/material.dart';
import '../dashboard/dashboard_screen.dart';
import '../kitchen/kitchen_screen.dart';
import '../add_item/add_item_screen.dart';
import '../usage/usage_screen.dart';
import '../shopping_checklist/shopping_checklist_screen.dart';
import '../dashboard/widgets/custom_bottom_nav.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 1; // Default to Kitchen Screen for this task
  int _previousIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: _currentIndex,
            children: [
              const DashboardScreen(),
              const KitchenScreen(),
              AddItemScreen(
                onBackPressed: () {
                  setState(() {
                    _currentIndex = _previousIndex;
                  });
                },
              ), // Index 2
              const UsageScreen(), // Index 3
              const ShoppingChecklistScreen(),  // Index 4
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomBottomNav(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  if (_currentIndex != 2 && index == 2) {
                    _previousIndex = _currentIndex;
                  }
                  _currentIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
