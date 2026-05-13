import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import 'widgets/shopping_header.dart';
import 'widgets/shopping_stats_row.dart';
import 'widgets/shopping_info_banner.dart';
import 'widgets/items_to_buy_list.dart';
import 'widgets/purchased_items_list.dart';
import 'widgets/add_item_manually_card.dart';

class ShoppingChecklistScreen extends StatelessWidget {
  const ShoppingChecklistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 16),
              ShoppingHeader(),
              SizedBox(height: 24),
              ShoppingStatsRow(),
              SizedBox(height: 24),
              ShoppingInfoBanner(),
              SizedBox(height: 24),
              ItemsToBuyList(),
              SizedBox(height: 24),
              PurchasedItemsList(),
              SizedBox(height: 24),
              AddItemManuallyCard(),
              SizedBox(height: 100), // Space for bottom nav
            ],
          ),
        ),
      ),
    );
  }
}
