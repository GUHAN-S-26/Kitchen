import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import 'widgets/add_item_header.dart';
import 'widgets/add_item_toggle.dart';
import 'widgets/add_item_form.dart';

class AddGroceryScreen extends StatelessWidget {
  final VoidCallback? onBackPressed;
  
  const AddGroceryScreen({super.key, this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16),
              AddItemHeader(onBackPressed: onBackPressed),
              const SizedBox(height: 24),
              const AddItemToggle(),
              const SizedBox(height: 24),
              const AddItemForm(),
              const SizedBox(height: 100), // Space for bottom nav
            ],
          ),
        ),
      ),
    );
  }
}
