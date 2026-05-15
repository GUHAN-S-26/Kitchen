import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_colors.dart';
import '../../../providers/kitchen_tool/kitchen_tool_provider.dart';
import 'package:iconsax/iconsax.dart';
import 'kitchen_tool_card.dart';
import 'kitchen_tool_status_badge.dart';

class KitchenToolSection extends ConsumerWidget {
  const KitchenToolSection({super.key});

  /// Maps model condition string to ToolStatus enum
  ToolStatus _conditionToStatus(String condition) {
    switch (condition) {
      case 'in_use':
        return ToolStatus.inUse;
      case 'needs_repair':
        return ToolStatus.needsSharpening;
      case 'missing':
        return ToolStatus.missing;
      default:
        return ToolStatus.available;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tools = ref.watch(kitchenToolProvider);

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

            // Empty state
            if (tools.isEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: AppColors.softBlue,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Iconsax.reserve, size: 40, color: AppColors.iconBlue),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No kitchen tools yet',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Tap the + button to add your first kitchen tool',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: AppColors.textSecondary,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              )
            else
              ...tools.map((tool) => KitchenToolCard(
                    name: tool.name,
                    location: tool.block.isNotEmpty
                        ? '${tool.block}${tool.location.isNotEmpty ? ' • ${tool.location}' : ''}'
                        : (tool.location.isNotEmpty ? tool.location : 'No location set'),
                    status: _conditionToStatus(tool.condition),
                    quantity: tool.quantityDisplay,
                    imageUrl: tool.imagePath ?? '',
                  )),
          ],
        ),
      ),
    );
  }
}
