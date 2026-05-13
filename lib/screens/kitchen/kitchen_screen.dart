import 'package:flutter/material.dart';
import 'widgets/kitchen_header.dart';
import 'widgets/kitchen_toggle.dart';
import 'widgets/kitchen_search_bar.dart';
import 'widgets/block_filter_chips.dart';
import 'widgets/grocery_items_section.dart';
import 'widgets/organize_section_card.dart';

class KitchenScreen extends StatelessWidget {
  const KitchenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
            const SliverToBoxAdapter(child: KitchenHeader()),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
            const SliverToBoxAdapter(child: KitchenToggle()),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
            const SliverToBoxAdapter(child: KitchenSearchBar()),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
            const SliverToBoxAdapter(child: BlockFilterChips()),
            const GroceryItemsSection(),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
            const SliverToBoxAdapter(child: OrganizeSectionCard()),
            const SliverToBoxAdapter(child: SizedBox(height: 100)), // Bottom padding for navbar
          ],
        ),
      ),
    );
  }
}
