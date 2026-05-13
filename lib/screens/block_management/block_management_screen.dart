import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import 'widgets/block_management_header.dart';
import 'widgets/block_stats_row.dart';
import 'widgets/block_search_actions.dart';
import 'widgets/add_block_banner.dart';
import 'widgets/block_list.dart';
import 'widgets/block_tip_banner.dart';

class BlockManagementScreen extends StatelessWidget {
  const BlockManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 16),
              BlockManagementHeader(),
              SizedBox(height: 24),
              BlockStatsRow(),
              SizedBox(height: 24),
              BlockSearchActions(),
              SizedBox(height: 16),
              AddBlockBanner(),
              SizedBox(height: 24),
              BlockList(),
              SizedBox(height: 16),
              BlockTipBanner(),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
