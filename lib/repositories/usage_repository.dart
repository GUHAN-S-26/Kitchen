import '../models/usage/usage_model.dart';
import '../services/hive_service.dart';

/// Repository for usage history operations on Hive.
class UsageRepository {
  /// Add a new usage record.
  Future<void> addUsage(UsageModel usage) async {
    await HiveService.usageHistoryBox.put(usage.id, usage);
  }

  /// Get all usage history sorted by date (newest first).
  List<UsageModel> getUsageHistory() {
    final items = HiveService.usageHistoryBox.values.toList();
    items.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return items;
  }

  /// Get usage history for a specific item.
  List<UsageModel> getUsageByItem(String itemId) {
    return HiveService.usageHistoryBox.values
        .where((usage) => usage.itemId == itemId)
        .toList()
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
  }

  /// Get recent usage entries (last N items).
  List<UsageModel> getRecentUsage({int limit = 5}) {
    final items = getUsageHistory();
    return items.take(limit).toList();
  }
}
