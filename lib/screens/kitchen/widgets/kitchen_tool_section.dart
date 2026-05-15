import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import 'package:iconsax/iconsax.dart';
import 'kitchen_tool_card.dart';
import 'kitchen_tool_status_badge.dart';

class KitchenToolSection extends StatelessWidget {
  const KitchenToolSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            // Section Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kitchen Tools',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Sort by: Name',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Iconsax.arrow_down_1, size: 14),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            // Tools List
            const KitchenToolCard(
              name: 'Chef Knife',
              location: 'Kitchen • Drawer A',
              status: ToolStatus.available,
              quantity: '1 Piece',
              imageUrl: 'https://images.unsplash.com/photo-1593455986872-9fa94fb5742a?w=500&q=80',
            ),
            const KitchenToolCard(
              name: 'Frying Pan',
              location: 'Kitchen • Shelf B',
              status: ToolStatus.inUse,
              quantity: '2 Pieces',
              imageUrl: 'https://images.unsplash.com/photo-1584286595398-a59f21d313f5?w=500&q=80',
            ),
            const KitchenToolCard(
              name: 'Food Container Set',
              location: 'Kitchen • Cabinet C',
              status: ToolStatus.available,
              quantity: '5 Pieces',
              imageUrl: 'https://images.unsplash.com/photo-1592686082987-0b1968d40767?w=500&q=80',
            ),
            const KitchenToolCard(
              name: 'Kitchen Scissors',
              location: 'Kitchen • Drawer A',
              status: ToolStatus.needsSharpening,
              quantity: '1 Piece',
              imageUrl: 'https://images.unsplash.com/photo-1572621415277-2e1183188832?w=500&q=80',
            ),
            const KitchenToolCard(
              name: 'Cheese Grater',
              location: 'Kitchen • Drawer B',
              status: ToolStatus.missing,
              quantity: '1 Piece',
              imageUrl: 'https://images.unsplash.com/photo-1585038936611-37d45464c098?w=500&q=80',
            ),
          ],
        ),
      ),
    );
  }
}
