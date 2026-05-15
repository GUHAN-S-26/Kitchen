import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/grocery/grocery_model.dart';
import '../grocery/grocery_provider.dart';
import '../kitchen_tool/kitchen_tool_provider.dart';
import '../usage/usage_provider.dart';

/// Dashboard statistics as a single computed object.
class DashboardStats {
  final int totalGroceries;
  final int totalKitchenTools;
  final int lowStockCount;
  final int recentUsageCount;

  const DashboardStats({
    required this.totalGroceries,
    required this.totalKitchenTools,
    required this.lowStockCount,
    required this.recentUsageCount,
  });
}

/// Combined dashboard stats provider.
final dashboardStatsProvider = Provider<DashboardStats>((ref) {
  final groceryCount = ref.watch(groceryCountProvider);
  final toolCount = ref.watch(kitchenToolCountProvider);
  final lowStock = ref.watch(lowStockCountProvider);
  final usageCount = ref.watch(usageCountProvider);
  return DashboardStats(
    totalGroceries: groceryCount,
    totalKitchenTools: toolCount,
    lowStockCount: lowStock,
    recentUsageCount: usageCount,
  );
});

/// Shopping checklist: auto-generated from low stock grocery items.
final shoppingChecklistProvider = Provider<List<GroceryModel>>((ref) {
  return ref.watch(lowStockGroceriesProvider);
});
