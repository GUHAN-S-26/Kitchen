import '../models/kitchen_tool/kitchen_tool_model.dart';
import '../services/hive_service.dart';

/// Repository for kitchen tool CRUD operations on Hive.
class KitchenToolRepository {
  /// Add a new kitchen tool to the box.
  Future<void> addTool(KitchenToolModel tool) async {
    await HiveService.kitchenToolsBox.put(tool.id, tool);
  }

  /// Update an existing kitchen tool.
  Future<void> updateTool(KitchenToolModel tool) async {
    await HiveService.kitchenToolsBox.put(tool.id, tool);
  }

  /// Delete a kitchen tool by ID.
  Future<void> deleteTool(String id) async {
    await HiveService.kitchenToolsBox.delete(id);
  }

  /// Get all kitchen tools sorted by creation date (newest first).
  List<KitchenToolModel> getAll() {
    final items = HiveService.kitchenToolsBox.values.toList();
    items.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return items;
  }

  /// Get a single kitchen tool by ID.
  KitchenToolModel? getById(String id) {
    return HiveService.kitchenToolsBox.get(id);
  }

  /// Update condition of a tool.
  Future<void> updateCondition(String id, String condition) async {
    final item = HiveService.kitchenToolsBox.get(id);
    if (item != null) {
      item.condition = condition;
      await item.save();
    }
  }

  /// Update location of a tool.
  Future<void> updateLocation(String id, String location) async {
    final item = HiveService.kitchenToolsBox.get(id);
    if (item != null) {
      item.location = location;
      await item.save();
    }
  }
}
