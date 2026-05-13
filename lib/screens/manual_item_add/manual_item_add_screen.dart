import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import 'widgets/manual_add_header.dart';
import 'widgets/shopping_banner.dart';
import 'widgets/manual_add_form.dart';

class ManualItemAddScreen extends StatelessWidget {
  const ManualItemAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            children: const [
              SizedBox(height: 16),
              ManualAddHeader(),
              SizedBox(height: 24),
              ShoppingBanner(),
              SizedBox(height: 24),
              ManualAddForm(),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: AppColors.background,
        ),
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.check_circle, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    'Add to Checklist',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
