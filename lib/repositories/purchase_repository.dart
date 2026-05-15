import '../models/purchase/purchase_model.dart';
import '../services/hive_service.dart';

/// Repository for purchase history operations on Hive.
class PurchaseRepository {
  /// Add a new purchase record.
  Future<void> addPurchase(PurchaseModel purchase) async {
    await HiveService.purchasesBox.put(purchase.id, purchase);
  }

  /// Get all purchase history sorted by date (newest first).
  List<PurchaseModel> getPurchaseHistory() {
    final items = HiveService.purchasesBox.values.toList();
    items.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return items;
  }

  /// Get purchase history for a specific item.
  List<PurchaseModel> getPurchasesByItem(String itemId) {
    return HiveService.purchasesBox.values
        .where((purchase) => purchase.itemId == itemId)
        .toList()
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
  }
}
