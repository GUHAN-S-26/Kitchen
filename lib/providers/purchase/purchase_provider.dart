import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../../models/purchase/purchase_model.dart';
import '../../repositories/purchase_repository.dart';
import '../grocery/grocery_provider.dart';

// ─── Repository Provider ─────────────────────────────────
final purchaseRepositoryProvider = Provider<PurchaseRepository>((ref) {
  return PurchaseRepository();
});

// ─── Main Purchase Provider ──────────────────────────────
final purchaseProvider =
    StateNotifierProvider<PurchaseNotifier, List<PurchaseModel>>((ref) {
  final repository = ref.watch(purchaseRepositoryProvider);
  return PurchaseNotifier(repository, ref);
});

class PurchaseNotifier extends StateNotifier<List<PurchaseModel>> {
  final PurchaseRepository _repository;
  final Ref _ref;
  static const _uuid = Uuid();

  PurchaseNotifier(this._repository, this._ref) : super([]) {
    loadPurchases();
  }

  /// Load all purchase history from Hive.
  void loadPurchases() {
    state = _repository.getPurchaseHistory();
  }

  /// Add a purchase entry and auto-increase stock.
  Future<void> addPurchase({
    required String itemId,
    required String itemName,
    required double quantityPurchased,
    required String unit,
    double? amount,
    String? storeName,
    String? billImagePath,
  }) async {
    final purchase = PurchaseModel(
      id: _uuid.v4(),
      itemId: itemId,
      itemName: itemName,
      quantityPurchased: quantityPurchased,
      unit: unit,
      amount: amount,
      storeName: storeName,
      billImagePath: billImagePath,
    );
    await _repository.addPurchase(purchase);

    // Auto-increase grocery stock when purchase is recorded
    await _ref
        .read(groceryProvider.notifier)
        .increaseStock(itemId, quantityPurchased);

    state = _repository.getPurchaseHistory();
  }
}

// ─── Derived Providers ───────────────────────────────────

/// Total purchase count.
final purchaseCountProvider = Provider<int>((ref) {
  return ref.watch(purchaseProvider).length;
});
