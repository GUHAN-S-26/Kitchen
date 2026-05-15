import 'package:hive_flutter/hive_flutter.dart';
import '../models/grocery/grocery_model.dart';
import '../models/kitchen_tool/kitchen_tool_model.dart';
import '../models/usage/usage_model.dart';
import '../models/purchase/purchase_model.dart';

/// Central Hive service for initialization and box access.
class HiveService {
  // Box name constants
  static const String groceriesBoxName = 'groceries';
  static const String kitchenToolsBoxName = 'kitchen_tools';
  static const String usageHistoryBoxName = 'usage_history';
  static const String purchasesBoxName = 'purchases';

  /// Initialize Hive, register adapters, and open boxes.
  /// Must be called before runApp().
  static Future<void> init() async {
    await Hive.initFlutter();

    // Register adapters
    Hive.registerAdapter(GroceryModelAdapter());
    Hive.registerAdapter(KitchenToolModelAdapter());
    Hive.registerAdapter(UsageModelAdapter());
    Hive.registerAdapter(PurchaseModelAdapter());

    // Open boxes
    await Hive.openBox<GroceryModel>(groceriesBoxName);
    await Hive.openBox<KitchenToolModel>(kitchenToolsBoxName);
    await Hive.openBox<UsageModel>(usageHistoryBoxName);
    await Hive.openBox<PurchaseModel>(purchasesBoxName);
  }

  // ─── Box Getters ─────────────────────────────────────────

  static Box<GroceryModel> get groceriesBox =>
      Hive.box<GroceryModel>(groceriesBoxName);

  static Box<KitchenToolModel> get kitchenToolsBox =>
      Hive.box<KitchenToolModel>(kitchenToolsBoxName);

  static Box<UsageModel> get usageHistoryBox =>
      Hive.box<UsageModel>(usageHistoryBoxName);

  static Box<PurchaseModel> get purchasesBox =>
      Hive.box<PurchaseModel>(purchasesBoxName);
}
