import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import 'widgets/add_usage_header.dart';
import 'widgets/item_selector_card.dart';
import 'widgets/stock_overview_card.dart';
import 'widgets/quantity_used_section.dart';
import 'widgets/quick_select_chips.dart';
import 'widgets/remaining_stock_card.dart';
import 'widgets/usage_note_section.dart';
import 'widgets/usage_datetime_section.dart';
import 'widgets/save_usage_button.dart';

class AddUsageScreen extends StatelessWidget {
  const AddUsageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              AddUsageHeader(),
              SizedBox(height: 32),
              ItemSelectorCard(),
              SizedBox(height: 24),
              StockOverviewCard(),
              SizedBox(height: 24),
              QuantityUsedSection(),
              SizedBox(height: 16),
              QuickSelectChips(),
              SizedBox(height: 24),
              RemainingStockCard(),
              SizedBox(height: 24),
              UsageNoteSection(),
              SizedBox(height: 24),
              UsageDatetimeSection(),
              SizedBox(height: 40),
              SaveUsageButton(),
              SizedBox(height: 40), // Bottom padding
            ],
          ),
        ),
      ),
    );
  }
}
