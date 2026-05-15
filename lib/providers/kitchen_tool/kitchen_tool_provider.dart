import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../../models/kitchen_tool/kitchen_tool_model.dart';
import '../../repositories/kitchen_tool_repository.dart';

// ─── Repository Provider ─────────────────────────────────
final kitchenToolRepositoryProvider = Provider<KitchenToolRepository>((ref) {
  return KitchenToolRepository();
});

// ─── Main Kitchen Tool Provider ──────────────────────────
final kitchenToolProvider =
    StateNotifierProvider<KitchenToolNotifier, List<KitchenToolModel>>((ref) {
  final repository = ref.watch(kitchenToolRepositoryProvider);
  return KitchenToolNotifier(repository);
});

class KitchenToolNotifier extends StateNotifier<List<KitchenToolModel>> {
  final KitchenToolRepository _repository;
  static const _uuid = Uuid();

  KitchenToolNotifier(this._repository) : super([]) {
    loadTools();
  }

  /// Load all tools from Hive.
  void loadTools() {
    state = _repository.getAll();
  }

  /// Add a new kitchen tool.
  Future<void> addTool({
    required String name,
    required int quantity,
    String unit = 'piece',
    String condition = 'available',
    String category = '',
    String block = '',
    String location = '',
    String? material,
    String? imagePath,
    String? notes,
    DateTime? purchaseDate,
  }) async {
    final tool = KitchenToolModel(
      id: _uuid.v4(),
      name: name,
      quantity: quantity,
      unit: unit,
      condition: condition,
      category: category,
      block: block,
      location: location,
      material: material,
      imagePath: imagePath,
      notes: notes,
      purchaseDate: purchaseDate,
    );
    await _repository.addTool(tool);
    state = _repository.getAll();
  }

  /// Update an existing kitchen tool.
  Future<void> updateTool(KitchenToolModel tool) async {
    await _repository.updateTool(tool);
    state = _repository.getAll();
  }

  /// Delete a kitchen tool by ID.
  Future<void> deleteTool(String id) async {
    await _repository.deleteTool(id);
    state = _repository.getAll();
  }

  /// Update condition of a tool.
  Future<void> updateCondition(String id, String condition) async {
    await _repository.updateCondition(id, condition);
    state = _repository.getAll();
  }

  /// Update location of a tool.
  Future<void> updateLocation(String id, String location) async {
    await _repository.updateLocation(id, location);
    state = _repository.getAll();
  }
}

// ─── Derived Providers ───────────────────────────────────

/// Total kitchen tool count.
final kitchenToolCountProvider = Provider<int>((ref) {
  return ref.watch(kitchenToolProvider).length;
});

/// Tools filtered by condition.
final toolsByConditionProvider =
    Provider.family<List<KitchenToolModel>, String>((ref, condition) {
  final tools = ref.watch(kitchenToolProvider);
  return tools.where((t) => t.condition == condition).toList();
});
