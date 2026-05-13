import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import 'widgets/usage_header.dart';
import 'widgets/usage_filters.dart';
import 'widgets/analytics_grid.dart';
import 'widgets/usage_trend_chart.dart';
import 'widgets/top_used_items_list.dart';
import 'widgets/recent_usage_list.dart';
import 'widgets/smart_tip_card.dart';

class UsageScreen extends StatelessWidget {
  const UsageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 16),
              UsageHeader(),
              SizedBox(height: 24),
              UsageFilters(),
              SizedBox(height: 24),
              AnalyticsGrid(),
              SizedBox(height: 24),
              UsageTrendChart(),
              SizedBox(height: 24),
              TopUsedItemsList(),
              SizedBox(height: 24),
              RecentUsageList(),
              SizedBox(height: 24),
              SmartTipCard(),
              SizedBox(height: 100), // Space for bottom nav
            ],
          ),
        ),
      ),
    );
  }
}
