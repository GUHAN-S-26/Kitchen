import 'package:hive/hive.dart';

part 'usage_model.g.dart';

@HiveType(typeId: 2)
class UsageModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String itemId;

  @HiveField(2)
  final String itemName;

  @HiveField(3)
  final String itemType; // 'grocery' or 'kitchen_tool'

  @HiveField(4)
  final double quantityUsed;

  @HiveField(5)
  final String unit;

  @HiveField(6)
  final String? note;

  @HiveField(7)
  final DateTime createdAt;

  UsageModel({
    required this.id,
    required this.itemId,
    required this.itemName,
    required this.itemType,
    required this.quantityUsed,
    required this.unit,
    this.note,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  /// Human-readable usage string
  String get usageDisplay =>
      '${quantityUsed.toStringAsFixed(quantityUsed.truncateToDouble() == quantityUsed ? 0 : 1)} $unit';

  /// Time ago display
  String get timeAgo {
    final diff = DateTime.now().difference(createdAt);
    if (diff.inMinutes < 1) return 'Just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes}m ago';
    if (diff.inHours < 24) return '${diff.inHours}h ago';
    if (diff.inDays < 7) return '${diff.inDays}d ago';
    return '${createdAt.day}/${createdAt.month}/${createdAt.year}';
  }
}
