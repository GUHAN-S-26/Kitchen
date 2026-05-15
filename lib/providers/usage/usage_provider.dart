import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../../models/usage/usage_model.dart';
import '../../repositories/usage_repository.dart';
import '../grocery/grocery_provider.dart';

// ─── Repository Provider ─────────────────────────────────
final usageRepositoryProvider = Provider<UsageRepository>((ref) {
  return UsageRepository();
});

// ─── Main Usage Provider ─────────────────────────────────
final usageProvider =
    StateNotifierProvider<UsageNotifier, List<UsageModel>>((ref) {
  final repository = ref.watch(usageRepositoryProvider);
  return UsageNotifier(repository, ref);
});

class UsageNotifier extends StateNotifier<List<UsageModel>> {
  final UsageRepository _repository;
  final Ref _ref;
  static const _uuid = Uuid();

  UsageNotifier(this._repository, this._ref) : super([]) {
    loadUsage();
  }

  /// Load all usage history from Hive.
  void loadUsage() {
    state = _repository.getUsageHistory();
  }

  /// Add a usage entry and auto-reduce stock for grocery items.
  Future<void> addUsage({
    required String itemId,
    required String itemName,
    required String itemType,
    required double quantityUsed,
    required String unit,
    String? note,
  }) async {
    final usage = UsageModel(
      id: _uuid.v4(),
      itemId: itemId,
      itemName: itemName,
      itemType: itemType,
      quantityUsed: quantityUsed,
      unit: unit,
      note: note,
    );
    await _repository.addUsage(usage);

    // Auto-reduce grocery stock when usage is recorded
    if (itemType == 'grocery') {
      await _ref
          .read(groceryProvider.notifier)
          .reduceStock(itemId, quantityUsed);
    }

    state = _repository.getUsageHistory();
  }

  /// Get recent usage entries.
  List<UsageModel> getRecentUsage({int limit = 5}) {
    return _repository.getRecentUsage(limit: limit);
  }
}

// ─── Derived Providers ───────────────────────────────────

/// Recent usage entries (last 5).
final recentUsageProvider = Provider<List<UsageModel>>((ref) {
  final usageList = ref.watch(usageProvider);
  return usageList.take(5).toList();
});

/// Total usage count.
final usageCountProvider = Provider<int>((ref) {
  return ref.watch(usageProvider).length;
});
