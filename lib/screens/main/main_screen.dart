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
  int _currentIndex = 0; // Default to Dashboard
  int _previousIndex = 0;
  final List<bool> _loadedScreens = List.filled(5, false);

  @override
  void initState() {
    super.initState();
    _loadedScreens[_currentIndex] = true;
    _loadedScreens[0] = true; // Always load Dashboard
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: _currentIndex,
            children: [
              _buildScreen(0, const DashboardScreen()),
              _buildScreen(1, const KitchenScreen()),
              _buildScreen(2, AddItemScreen(
                onBackPressed: () {
                  setState(() {
                    _currentIndex = _previousIndex;
                  });
                },
              )), 
              _buildScreen(3, const UsageScreen()), 
              _buildScreen(4, const ShoppingChecklistScreen()),
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
                  _loadedScreens[index] = true;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScreen(int index, Widget screen) {
    return _loadedScreens[index] ? screen : const SizedBox.shrink();
  }
}
