import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import 'widgets/item_detail_header.dart';
import 'widgets/product_information_card.dart';
import 'widgets/statistics_cards_section.dart';
import 'widgets/update_quantity_section.dart';
import 'widgets/usage_history_section.dart';
import 'widgets/about_storage_section.dart';
import 'widgets/remove_item_button.dart';

class ItemDetailScreen extends StatelessWidget {
  const ItemDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 16),
              ItemDetailHeader(),
              SizedBox(height: 24),
              ProductInformationCard(),
              SizedBox(height: 24),
              StatisticsCardsSection(),
              SizedBox(height: 24),
              UpdateQuantitySection(),
              SizedBox(height: 24),
              UsageHistorySection(),
              SizedBox(height: 24),
              AboutStorageSection(),
              SizedBox(height: 24),
              RemoveItemButton(),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
