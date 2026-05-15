import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import '../../core/theme/app_colors.dart';
import '../../providers/grocery/grocery_provider.dart';
import '../../providers/kitchen_tool/kitchen_tool_provider.dart';
import 'widgets/add_item_header.dart';
import 'widgets/add_item_toggle.dart';
import 'widgets/grocery_form.dart';
import 'widgets/kitchen_tool_form.dart';

class AddItemScreen extends ConsumerStatefulWidget {
  final VoidCallback? onBackPressed;
  final bool initialIsGrocery;

  const AddItemScreen({super.key, this.onBackPressed, this.initialIsGrocery = true});

  @override
  ConsumerState<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends ConsumerState<AddItemScreen> {
  late bool _isGrocery;
  bool _isSaving = false;

  // GlobalKeys to access form state
  final _groceryFormKey = GlobalKey<GroceryFormState>();
  final _kitchenToolFormKey = GlobalKey<KitchenToolFormState>();

  @override
  void initState() {
    super.initState();
    _isGrocery = widget.initialIsGrocery;
  }

  Future<void> _handleSave() async {
    if (_isSaving) return;

    if (_isGrocery) {
      final formState = _groceryFormKey.currentState;
      if (formState == null) return;

      final error = formState.validate();
      if (error != null) {
        _showSnackBar(error, isError: true);
        return;
      }

      setState(() => _isSaving = true);
      final data = formState.formData;

      try {
        await ref.read(groceryProvider.notifier).addGrocery(
          name: data['name'],
          quantity: data['quantity'],
          unit: data['unit'],
          category: data['category'],
          block: data['block'],
          shelf: data['shelf'],
          minimumStock: data['minimumStock'],
          expiryDate: data['expiryDate'],
          notes: data['notes'].toString().isNotEmpty ? data['notes'] : null,
        );

        formState.resetForm();
        _showSnackBar('Grocery item added successfully! 🎉');

        // Navigate back after short delay
        if (widget.onBackPressed != null) {
          Future.delayed(const Duration(milliseconds: 500), widget.onBackPressed!);
        }
      } catch (e) {
        _showSnackBar('Failed to add item: $e', isError: true);
      } finally {
        if (mounted) setState(() => _isSaving = false);
      }
    } else {
      final formState = _kitchenToolFormKey.currentState;
      if (formState == null) return;

      final error = formState.validate();
      if (error != null) {
        _showSnackBar(error, isError: true);
        return;
      }

      setState(() => _isSaving = true);
      final data = formState.formData;

      try {
        await ref.read(kitchenToolProvider.notifier).addTool(
          name: data['name'],
          quantity: data['quantity'],
          unit: data['unit'],
          category: data['category'],
          block: data['block'],
          location: data['location'],
          material: data['material'],
          purchaseDate: data['purchaseDate'],
          notes: data['notes'].toString().isNotEmpty ? data['notes'] : null,
        );

        formState.resetForm();
        _showSnackBar('Kitchen tool added successfully! 🎉');

        if (widget.onBackPressed != null) {
          Future.delayed(const Duration(milliseconds: 500), widget.onBackPressed!);
        }
      } catch (e) {
        _showSnackBar('Failed to add tool: $e', isError: true);
      } finally {
        if (mounted) setState(() => _isSaving = false);
      }
    }
  }

  void _showSnackBar(String message, {bool isError = false}) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? AppColors.iconRed : AppColors.primaryGreen,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.all(16),
      ),
    );
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
                        ? GroceryForm(key: _groceryFormKey)
                        : KitchenToolForm(key: _kitchenToolFormKey),
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
                    onPressed: _isSaving ? null : _handleSave,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryGreen,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: _isSaving
                        ? const SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 2.5,
                            ),
                          )
                        : Row(
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
