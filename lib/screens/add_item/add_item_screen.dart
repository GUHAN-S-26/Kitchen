import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../core/theme/app_colors.dart';
import 'widgets/add_item_header.dart';
import 'widgets/add_item_toggle.dart';
import 'widgets/grocery_form.dart';
import 'widgets/kitchen_tool_form.dart';

class AddItemScreen extends StatefulWidget {
  final VoidCallback? onBackPressed;
  final bool initialIsGrocery;

  const AddItemScreen({super.key, this.onBackPressed, this.initialIsGrocery = true});

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  late bool _isGrocery;

  @override
  void initState() {
    super.initState();
    _isGrocery = widget.initialIsGrocery;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 16),
              AddItemHeader(onBackPressed: widget.onBackPressed),
              const SizedBox(height: 24),

              // ─── Toggle ───
              AddItemToggle(
                isGrocerySelected: _isGrocery,
                onToggle: (isGrocery) {
                  setState(() => _isGrocery = isGrocery);
                },
              ),
              const SizedBox(height: 24),

              // ─── Form Card ───
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.03),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 250),
                    switchInCurve: Curves.easeIn,
                    switchOutCurve: Curves.easeOut,
                    transitionBuilder: (child, animation) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                    child: _isGrocery
                        ? const GroceryForm(key: ValueKey('grocery'))
                        : const KitchenToolForm(key: ValueKey('kitchen_tool')),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // ─── Save Button ───
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryGreen,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Iconsax.save_2, color: Colors.white, size: 20),
                        SizedBox(width: 10),
                        Text(
                          'Save Item',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 100), // Space for bottom nav
            ],
          ),
        ),
      ),
    );
  }
}
