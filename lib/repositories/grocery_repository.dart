import '../models/grocery/grocery_model.dart';
import '../services/hive_service.dart';

/// Repository for grocery CRUD operations on Hive.
class GroceryRepository {
  /// Add a new grocery item to the box.
  Future<void> addGrocery(GroceryModel grocery) async {
    await HiveService.groceriesBox.put(grocery.id, grocery);
  }

  /// Update an existing grocery item.
  Future<void> updateGrocery(GroceryModel grocery) async {
    await HiveService.groceriesBox.put(grocery.id, grocery);
  }

  /// Delete a grocery item by ID.
  Future<void> deleteGrocery(String id) async {
    await HiveService.groceriesBox.delete(id);
  }

  /// Get all grocery items sorted by creation date (newest first).
  List<GroceryModel> getAll() {
    final items = HiveService.groceriesBox.values.toList();
    items.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return items;
  }

  /// Get grocery items that are below minimum stock level.
  List<GroceryModel> getLowStockItems() {
    return HiveService.groceriesBox.values
        .where((item) => item.isLowStock)
        .toList();
  }

  /// Get a single grocery item by ID.
  GroceryModel? getById(String id) {
    return HiveService.groceriesBox.get(id);
  }

  /// Update quantity of a grocery item.
  Future<void> updateQuantity(String id, double newQuantity) async {
    final item = HiveService.groceriesBox.get(id);
    if (item != null) {
      item.quantity = newQuantity;
      await item.save();
    }
  }
}
