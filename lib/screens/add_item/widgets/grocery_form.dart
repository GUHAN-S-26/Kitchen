import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';
import 'shared/custom_input.dart';
import 'shared/custom_dropdown.dart';
import 'shared/category_card.dart';
import 'shared/photo_upload_card.dart';
import 'shared/section_title.dart';

class GroceryForm extends StatefulWidget {
  const GroceryForm({super.key});

  @override
  State<GroceryForm> createState() => _GroceryFormState();
}

class _GroceryFormState extends State<GroceryForm> {
  int _selectedCategoryIndex = -1;
  final TextEditingController _notesController = TextEditingController();
  int _notesCharCount = 0;

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ─── Item Name ───
        const SectionTitle(title: 'Item Name'),
        const SizedBox(height: 8),
        const CustomInput(
          hintText: 'Enter item name (e.g. Sugar)',
          suffixIcon: Iconsax.box,
        ),

        const SizedBox(height: 20),
        _buildDivider(),
        const SizedBox(height: 20),

        // ─── Quantity ───
        const SectionTitle(title: 'Quantity'),
        const SizedBox(height: 8),
        Row(
          children: const [
            Expanded(
              child: CustomInput(hintText: 'Enter quantity'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomDropdown(
                hintText: 'Select Unit',
                items: ['g', 'kg', 'litre', 'ml', 'packet'],
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),
        _buildDivider(),
        const SizedBox(height: 20),

        // ─── Block & Location ───
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SectionTitle(title: 'Select Block'),
                  SizedBox(height: 8),
                  CustomDropdown(
                    hintText: 'Kitchen • Block A',
                    items: ['Kitchen • Block A', 'Kitchen • Block B', 'Pantry'],
                    prefixIcon: Iconsax.building,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SectionTitle(title: 'Location', subtitle: '(Optional)'),
                  SizedBox(height: 8),
                  CustomInput(
                    hintText: 'e.g. Top Shelf',
                    suffixIcon: Iconsax.location,
                  ),
                ],
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),
        _buildDivider(),
        const SizedBox(height: 20),

        // ─── Category ───
        const SectionTitle(title: 'Category', subtitle: '(Optional)'),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoryCard(
                title: 'Grains',
                icon: Icons.grass,
                iconColor: Colors.orange.shade700,
                isSelected: _selectedCategoryIndex == 0,
                onTap: () => setState(() => _selectedCategoryIndex = 0),
              ),
              CategoryCard(
                title: 'Pulses',
                icon: Iconsax.box,
                iconColor: AppColors.iconGreen,
                isSelected: _selectedCategoryIndex == 1,
                onTap: () => setState(() => _selectedCategoryIndex = 1),
              ),
              CategoryCard(
                title: 'Spices',
                icon: Iconsax.fatrows,
                iconColor: AppColors.iconRed,
                isSelected: _selectedCategoryIndex == 2,
                onTap: () => setState(() => _selectedCategoryIndex = 2),
              ),
              CategoryCard(
                title: 'Oil & Ghee',
                icon: Iconsax.glass,
                iconColor: Colors.amber.shade700,
                isSelected: _selectedCategoryIndex == 3,
                onTap: () => setState(() => _selectedCategoryIndex = 3),
              ),
              CategoryCard(
                title: 'More',
                icon: Iconsax.category,
                iconColor: AppColors.textSecondary,
                isSelected: _selectedCategoryIndex == 4,
                onTap: () => setState(() => _selectedCategoryIndex = 4),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),
        _buildDivider(),
        const SizedBox(height: 20),

        // ─── Minimum Stock Alert ───
        const SectionTitle(
          title: 'Minimum Stock Alert',
          subtitle: 'Get notified when stock is low',
        ),
        const SizedBox(height: 8),
        Row(
          children: const [
            Expanded(
              flex: 2,
              child: CustomInput(hintText: 'Enter quantity'),
            ),
            SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: CustomDropdown(
                hintText: 'Unit',
                items: ['g', 'kg', 'ml', 'litre'],
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),
        _buildDivider(),
        const SizedBox(height: 20),

        // ─── Expiry Date ───
        const SectionTitle(title: 'Expiry Date', subtitle: '(Optional)'),
        const SizedBox(height: 8),
        const CustomInput(
          hintText: 'Select expiry date',
          prefixIcon: Iconsax.calendar_1,
          suffixIcon: Iconsax.arrow_right_3,
          readOnly: true,
        ),

        const SizedBox(height: 20),
        _buildDivider(),
        const SizedBox(height: 20),

        // ─── Notes ───
        const SectionTitle(title: 'Notes', subtitle: '(Optional)'),
        const SizedBox(height: 8),
        CustomInput(
          hintText: 'Add any notes...',
          maxLines: 4,
          controller: _notesController,
          onChanged: (val) => setState(() => _notesCharCount = val.length),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(
              '$_notesCharCount/100',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.textSecondary,
                  ),
            ),
          ),
        ),

        const SizedBox(height: 20),
        _buildDivider(),
        const SizedBox(height: 20),

        // ─── Photo ───
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: const SectionTitle(
                title: 'Add Photo',
                subtitle: 'Add a photo for quick identification',
              ),
            ),
            const SizedBox(width: 12),
            const PhotoUploadCard(),
          ],
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Divider(color: Colors.grey.shade100, thickness: 1, height: 0);
  }
}
