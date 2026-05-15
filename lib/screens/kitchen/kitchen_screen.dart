import 'package:flutter/material.dart';
import 'widgets/kitchen_header.dart';
import 'widgets/kitchen_toggle.dart';
import 'widgets/kitchen_search_bar.dart';
import 'widgets/block_filter_chips.dart';
import 'widgets/grocery_items_section.dart';
import 'widgets/organize_section_card.dart';
import 'widgets/kitchen_tool_filter_chips.dart';
import 'widgets/kitchen_tool_section.dart';

class KitchenScreen extends StatefulWidget {
  const KitchenScreen({super.key});

  @override
  State<KitchenScreen> createState() => _KitchenScreenState();
}

class _KitchenScreenState extends State<KitchenScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
            const SliverToBoxAdapter(child: KitchenHeader()),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
            SliverToBoxAdapter(
              child: KitchenToggle(
                selectedIndex: _selectedIndex,
                onChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
            const SliverToBoxAdapter(child: KitchenSearchBar()),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
            if (_selectedIndex == 0) ...[
              const SliverToBoxAdapter(child: BlockFilterChips()),
              const GroceryItemsSection(),
              const SliverToBoxAdapter(child: SizedBox(height: 24)),
              const SliverToBoxAdapter(child: OrganizeSectionCard()),
            ] else ...[
              const SliverToBoxAdapter(child: KitchenToolFilterChips()),
              const SliverToBoxAdapter(child: SizedBox(height: 24)),
              const KitchenToolSection(),
            ],
            const SliverToBoxAdapter(child: SizedBox(height: 100)), // Bottom padding for navbar
          ],
        ),
      ),
    );
  }
}
