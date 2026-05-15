import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../../models/grocery/grocery_model.dart';
import '../../repositories/grocery_repository.dart';

// ─── Repository Provider ─────────────────────────────────
final groceryRepositoryProvider = Provider<GroceryRepository>((ref) {
  return GroceryRepository();
});

// ─── Main Grocery List Provider ──────────────────────────
final groceryProvider =
    StateNotifierProvider<GroceryNotifier, List<GroceryModel>>((ref) {
  final repository = ref.watch(groceryRepositoryProvider);
  return GroceryNotifier(repository);
});

class GroceryNotifier extends StateNotifier<List<GroceryModel>> {
  final GroceryRepository _repository;
  static const _uuid = Uuid();

  GroceryNotifier(this._repository) : super([]) {
    loadGroceries();
  }

  /// Load all groceries from Hive.
  void loadGroceries() {
    state = _repository.getAll();
  }

  /// Add a new grocery item.
  Future<void> addGrocery({
    required String name,
    required double quantity,
    required String unit,
    String category = '',
    String block = '',
    String shelf = '',
    double minimumStock = 0,
    DateTime? expiryDate,
    String? imagePath,
    String? notes,
  }) async {
    final grocery = GroceryModel(
      id: _uuid.v4(),
      name: name,
      quantity: quantity,
      unit: unit,
      category: category,
      block: block,
      shelf: shelf,
      minimumStock: minimumStock,
      expiryDate: expiryDate,
      imagePath: imagePath,
      notes: notes,
    );
    await _repository.addGrocery(grocery);
    state = _repository.getAll();
  }

  /// Update an existing grocery item.
  Future<void> updateGrocery(GroceryModel grocery) async {
    await _repository.updateGrocery(grocery);
    state = _repository.getAll();
  }

  /// Delete a grocery item by ID.
  Future<void> deleteGrocery(String id) async {
    await _repository.deleteGrocery(id);
    state = _repository.getAll();
  }

  /// Reduce stock for a grocery item (used when adding usage).
  Future<void> reduceStock(String id, double amount) async {
    final item = _repository.getById(id);
    if (item != null) {
      final newQty = (item.quantity - amount).clamp(0.0, double.infinity);
      await _repository.updateQuantity(id, newQty);
      state = _repository.getAll();
    }
  }

  /// Increase stock for a grocery item (used when adding purchase).
  Future<void> increaseStock(String id, double amount) async {
    final item = _repository.getById(id);
    if (item != null) {
      await _repository.updateQuantity(id, item.quantity + amount);
      state = _repository.getAll();
    }
  }
}

// ─── Derived Providers ───────────────────────────────────

/// All low-stock grocery items.
final lowStockGroceriesProvider = Provider<List<GroceryModel>>((ref) {
  final groceries = ref.watch(groceryProvider);
  return groceries.where((g) => g.isLowStock).toList();
});

/// Total grocery count.
final groceryCountProvider = Provider<int>((ref) {
  return ref.watch(groceryProvider).length;
});

/// Low stock count.
final lowStockCountProvider = Provider<int>((ref) {
  return ref.watch(lowStockGroceriesProvider).length;
});
