import 'package:flutter/material.dart';
import 'widgets/header_section.dart';
import 'widgets/search_bar_section.dart';
import 'widgets/statistics_grid.dart';
import 'widgets/quick_actions.dart';
import 'widgets/low_stock_section.dart';
import 'widgets/recent_usage_section.dart';
import 'widgets/shopping_reminder_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: SizedBox(height: 24)),
                SliverToBoxAdapter(child: HeaderSection()),
                SliverToBoxAdapter(child: SizedBox(height: 24)),
                SliverToBoxAdapter(child: SearchBarSection()),
                SliverToBoxAdapter(child: SizedBox(height: 24)),
                SliverToBoxAdapter(child: StatisticsGrid()),
                SliverToBoxAdapter(child: SizedBox(height: 32)),
                SliverToBoxAdapter(child: QuickActions()),
                SliverToBoxAdapter(child: SizedBox(height: 32)),
                SliverToBoxAdapter(child: LowStockSection()),
                SliverToBoxAdapter(child: SizedBox(height: 32)),
                SliverToBoxAdapter(child: RecentUsageSection()),
                SliverToBoxAdapter(child: SizedBox(height: 32)),
                SliverToBoxAdapter(child: ShoppingReminderCard()),
                SliverToBoxAdapter(child: SizedBox(height: 100)), // Bottom padding for navbar
              ],
            ),
          ],
        ),
      ),
    );
  }
}
