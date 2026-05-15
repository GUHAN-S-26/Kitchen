import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import 'widgets/kitchen_tool_detail_header.dart';
import 'widgets/tool_overview_card.dart';
import 'widgets/tool_location_card.dart';
import 'widgets/tool_condition_card.dart';
import 'widgets/update_quantity_card.dart';
import 'widgets/remove_tool_button.dart';

class KitchenToolDetailScreen extends StatefulWidget {
  const KitchenToolDetailScreen({super.key});

  @override
  State<KitchenToolDetailScreen> createState() =>
      _KitchenToolDetailScreenState();
}

class _KitchenToolDetailScreenState extends State<KitchenToolDetailScreen> {
  int _quantity = 1;
  int _selectedConditionIndex = 0;

  void _updateQuantity(int delta) {
    setState(() {
      _quantity = (_quantity + delta).clamp(0, 99);
    });
  }

  void _onConditionChanged(int index) {
    setState(() {
      _selectedConditionIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const KitchenToolDetailHeader(),
                const SizedBox(height: 16),
                const ToolOverviewCard(),
                const SizedBox(height: 16),
                const ToolLocationCard(),
                const SizedBox(height: 16),
                ToolConditionCard(
                  selectedIndex: _selectedConditionIndex,
                  onConditionChanged: _onConditionChanged,
                ),
                const SizedBox(height: 16),
                UpdateQuantityCard(
                  quantity: _quantity,
                  onQuantityChanged: _updateQuantity,
                ),
                const SizedBox(height: 20),
                const RemoveToolButton(),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
