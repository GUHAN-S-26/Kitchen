import 'package:hive/hive.dart';

part 'kitchen_tool_model.g.dart';

@HiveType(typeId: 1)
class KitchenToolModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  int quantity;

  @HiveField(3)
  String unit;

  @HiveField(4)
  String condition; // 'available', 'in_use', 'needs_repair', 'missing'

  @HiveField(5)
  String category;

  @HiveField(6)
  String block;

  @HiveField(7)
  String location;

  @HiveField(8)
  String? material;

  @HiveField(9)
  String? imagePath;

  @HiveField(10)
  String? notes;

  @HiveField(11)
  final DateTime createdAt;

  @HiveField(12)
  DateTime? purchaseDate;

  KitchenToolModel({
    required this.id,
    required this.name,
    required this.quantity,
    this.unit = 'piece',
    this.condition = 'available',
    this.category = '',
    this.block = '',
    this.location = '',
    this.material,
    this.imagePath,
    this.notes,
    this.purchaseDate,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  /// Human-readable quantity string
  String get quantityDisplay => '$quantity ${quantity == 1 ? unit : '${unit}s'}';

  /// Copy with new values
  KitchenToolModel copyWith({
    String? name,
    int? quantity,
    String? unit,
    String? condition,
    String? category,
    String? block,
    String? location,
    String? material,
    String? imagePath,
    String? notes,
    DateTime? purchaseDate,
  }) {
    return KitchenToolModel(
      id: id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
      condition: condition ?? this.condition,
      category: category ?? this.category,
      block: block ?? this.block,
      location: location ?? this.location,
      material: material ?? this.material,
      imagePath: imagePath ?? this.imagePath,
      notes: notes ?? this.notes,
      purchaseDate: purchaseDate ?? this.purchaseDate,
      createdAt: createdAt,
    );
  }
}
