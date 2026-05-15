import 'package:hive/hive.dart';

part 'purchase_model.g.dart';

@HiveType(typeId: 3)
class PurchaseModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String itemId;

  @HiveField(2)
  final String itemName;

  @HiveField(3)
  final double quantityPurchased;

  @HiveField(4)
  final String unit;

  @HiveField(5)
  final double? amount;

  @HiveField(6)
  final String? storeName;

  @HiveField(7)
  final String? billImagePath;

  @HiveField(8)
  final DateTime createdAt;

  PurchaseModel({
    required this.id,
    required this.itemId,
    required this.itemName,
    required this.quantityPurchased,
    required this.unit,
    this.amount,
    this.storeName,
    this.billImagePath,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  /// Human-readable purchase string
  String get purchaseDisplay =>
      '${quantityPurchased.toStringAsFixed(quantityPurchased.truncateToDouble() == quantityPurchased ? 0 : 1)} $unit';

  /// Human-readable amount
  String get amountDisplay => amount != null ? '₹${amount!.toStringAsFixed(2)}' : '';

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
