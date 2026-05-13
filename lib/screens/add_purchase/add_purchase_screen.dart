import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import 'widgets/add_purchase_header.dart';
import 'widgets/purchase_item_selector.dart';
import 'widgets/current_stock_card.dart';
import 'widgets/purchase_details_section.dart';
import 'widgets/receipt_upload_card.dart';
import 'widgets/updated_stock_preview.dart';
import 'widgets/purchase_datetime_section.dart';
import 'widgets/purchase_note_section.dart';
import 'widgets/save_purchase_button.dart';

class AddPurchaseScreen extends StatelessWidget {
  const AddPurchaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              AddPurchaseHeader(),
              SizedBox(height: 32),
              PurchaseItemSelector(),
              SizedBox(height: 24),
              CurrentStockCard(),
              SizedBox(height: 24),
              PurchaseDetailsSection(),
              SizedBox(height: 24),
              ReceiptUploadCard(),
              SizedBox(height: 24),
              UpdatedStockPreview(),
              SizedBox(height: 24),
              PurchaseDatetimeSection(),
              SizedBox(height: 24),
              PurchaseNoteSection(),
              SizedBox(height: 40),
              SavePurchaseButton(),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
