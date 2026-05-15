import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';
import 'shared/custom_input.dart';
import 'shared/custom_dropdown.dart';
import 'shared/category_card.dart';
import 'shared/photo_upload_card.dart';
import 'shared/section_title.dart';

class KitchenToolForm extends StatefulWidget {
  const KitchenToolForm({super.key});

  @override
  State<KitchenToolForm> createState() => KitchenToolFormState();
}

class KitchenToolFormState extends State<KitchenToolForm> {
  int _selectedCategoryIndex = -1;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController minStockController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  int _notesCharCount = 0;

  String? _selectedUnit;
  String? _selectedBlock;
  String? _selectedMaterial;
  String? _selectedMinUnit;
  DateTime? _purchaseDate;

  // Category labels
  static const List<String> _categoryLabels = [
    'Cutlery', 'Cookware', 'Appliances', 'Utensils', 'Other'
  ];

  /// Collects all form data as a map
  Map<String, dynamic> get formData => {
    'name': nameController.text.trim(),
    'quantity': int.tryParse(quantityController.text.trim()) ?? 0,
    'unit': _selectedUnit ?? 'piece',
    'category': _selectedCategoryIndex >= 0 ? _categoryLabels[_selectedCategoryIndex] : '',
    'block': _selectedBlock ?? '',
    'location': locationController.text.trim(),
    'material': _selectedMaterial,
    'purchaseDate': _purchaseDate,
    'notes': _notesController.text.trim(),
  };

  /// Validates the form — returns error message or null
  String? validate() {
    if (nameController.text.trim().isEmpty) return 'Please enter tool name';
    if (quantityController.text.trim().isEmpty) return 'Please enter quantity';
    if (int.tryParse(quantityController.text.trim()) == null) return 'Invalid quantity';
    return null;
  }

  /// Resets the form
  void resetForm() {
    nameController.clear();
    quantityController.clear();
    locationController.clear();
    minStockController.clear();
    _notesController.clear();
    setState(() {
      _selectedUnit = null;
      _selectedBlock = null;
      _selectedMaterial = null;
      _selectedMinUnit = null;
      _selectedCategoryIndex = -1;
      _purchaseDate = null;
      _notesCharCount = 0;
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    quantityController.dispose();
    locationController.dispose();
    minStockController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  Future<void> _pickPurchaseDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _purchaseDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() => _purchaseDate = picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ─── Tool Name ───
        const SectionTitle(title: 'Tool Name'),
        const SizedBox(height: 8),
        CustomInput(
          hintText: 'Enter tool name (e.g. Knife, Blender)',
          suffixIcon: Iconsax.setting_4,
          controller: nameController,
        ),

        const SizedBox(height: 20),
        _buildDivider(),
        const SizedBox(height: 20),

        // ─── Quantity ───
        const SectionTitle(title: 'Quantity'),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: CustomInput(
                hintText: 'Enter quantity',
                controller: quantityController,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CustomDropdown(
                hintText: 'Select Unit',
                items: const ['piece', 'set', 'box', 'unit'],
                value: _selectedUnit,
                onChanged: (val) => setState(() => _selectedUnit = val),
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
                children: [
                  const SectionTitle(title: 'Select Block'),
                  const SizedBox(height: 8),
                  CustomDropdown(
                    hintText: 'Kitchen • Block A',
                    items: const ['Kitchen • Block A', 'Kitchen • Block B', 'Pantry'],
                    prefixIcon: Iconsax.building,
                    value: _selectedBlock,
                    onChanged: (val) => setState(() => _selectedBlock = val),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionTitle(title: 'Location', subtitle: '(Optional)'),
                  const SizedBox(height: 8),
                  CustomInput(
                    hintText: 'e.g. Top Drawer',
                    suffixIcon: Iconsax.location,
                    controller: locationController,
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
                title: 'Cutlery',
                icon: Iconsax.scissor,
                iconColor: AppColors.iconGreen,
                isSelected: _selectedCategoryIndex == 0,
                onTap: () => setState(() => _selectedCategoryIndex = 0),
              ),
              CategoryCard(
                title: 'Cookware',
                icon: Iconsax.reserve,
                iconColor: AppColors.iconPurple,
                isSelected: _selectedCategoryIndex == 1,
                onTap: () => setState(() => _selectedCategoryIndex = 1),
              ),
              CategoryCard(
                title: 'Appliances',
                icon: Iconsax.cpu,
                iconColor: AppColors.iconOrange,
                isSelected: _selectedCategoryIndex == 2,
                onTap: () => setState(() => _selectedCategoryIndex = 2),
              ),
              CategoryCard(
                title: 'Utensils',
                icon: Iconsax.key,
                iconColor: AppColors.iconBlue,
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

        // ─── Tool Material ───
        const SectionTitle(title: 'Tool Material', subtitle: '(Optional)'),
        const SizedBox(height: 8),
        CustomDropdown(
          hintText: 'e.g. Stainless Steel, Plastic, Wood',
          items: const ['Stainless Steel', 'Plastic', 'Wood', 'Glass', 'Ceramic'],
          value: _selectedMaterial,
          onChanged: (val) => setState(() => _selectedMaterial = val),
        ),

        const SizedBox(height: 20),
        _buildDivider(),
        const SizedBox(height: 20),

        // ─── Minimum Stock Alert ───
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Expanded(
              flex: 2,
              child: SectionTitle(
                title: 'Minimum Stock Alert',
                subtitle: 'Get notified when quantity is low',
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: CustomInput(
                      hintText: 'Enter quantity',
                      controller: minStockController,
                    ),
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: 80,
                    child: CustomDropdown(
                      hintText: 'Unit',
                      items: const ['piece', 'set', 'box', 'unit'],
                      value: _selectedMinUnit,
                      onChanged: (val) => setState(() => _selectedMinUnit = val),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),
        _buildDivider(),
        const SizedBox(height: 20),

        // ─── Purchase Date ───
        const SectionTitle(title: 'Purchase Date', subtitle: '(Optional)'),
        const SizedBox(height: 8),
        CustomInput(
          hintText: _purchaseDate != null
              ? '${_purchaseDate!.day}/${_purchaseDate!.month}/${_purchaseDate!.year}'
              : 'Select purchase date',
          prefixIcon: Iconsax.calendar_1,
          suffixIcon: Iconsax.arrow_right_3,
          readOnly: true,
          onTap: _pickPurchaseDate,
        ),

        const SizedBox(height: 20),
        _buildDivider(),
        const SizedBox(height: 20),

        // ─── Notes ───
        const SectionTitle(title: 'Notes', subtitle: '(Optional)'),
        const SizedBox(height: 8),
        CustomInput(
          hintText: 'Add any notes about this tool...',
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
