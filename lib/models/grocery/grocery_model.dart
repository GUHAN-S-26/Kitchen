import 'package:hive/hive.dart';

part 'grocery_model.g.dart';

@HiveType(typeId: 0)
class GroceryModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  double quantity;

  @HiveField(3)
  String unit;

  @HiveField(4)
  String category;

  @HiveField(5)
  String block;

  @HiveField(6)
  String shelf;

  @HiveField(7)
  double minimumStock;

  @HiveField(8)
  DateTime? expiryDate;

  @HiveField(9)
  String? imagePath;

  @HiveField(10)
  String? notes;

  @HiveField(11)
  final DateTime createdAt;

  GroceryModel({
    required this.id,
    required this.name,
    required this.quantity,
    required this.unit,
    this.category = '',
    this.block = '',
    this.shelf = '',
    this.minimumStock = 0,
    this.expiryDate,
    this.imagePath,
    this.notes,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  /// Calculates stock progress ratio (0.0 to 1.0) based on a reasonable max.
  /// Uses minimumStock * 5 as max if set, otherwise defaults to 100.
  double get stockProgress {
    if (quantity <= 0) return 0.0;
    final max = minimumStock > 0 ? minimumStock * 5 : 100.0;
    return (quantity / max).clamp(0.0, 1.0);
  }

  /// Whether this item is below minimum stock threshold
  bool get isLowStock => minimumStock > 0 && quantity <= minimumStock;

  /// Human-readable quantity string
  String get quantityDisplay => '${quantity.toStringAsFixed(quantity.truncateToDouble() == quantity ? 0 : 1)} $unit Left';

  /// Status label
  String get statusLabel => isLowStock ? 'Low Stock' : 'In Stock';

  /// Copy with new values
  GroceryModel copyWith({
    String? name,
    double? quantity,
    String? unit,
    String? category,
    String? block,
    String? shelf,
    double? minimumStock,
    DateTime? expiryDate,
    String? imagePath,
    String? notes,
  }) {
    return GroceryModel(
      id: id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
      category: category ?? this.category,
      block: block ?? this.block,
      shelf: shelf ?? this.shelf,
      minimumStock: minimumStock ?? this.minimumStock,
      expiryDate: expiryDate ?? this.expiryDate,
      imagePath: imagePath ?? this.imagePath,
      notes: notes ?? this.notes,
      createdAt: createdAt,
    );
  }
}
