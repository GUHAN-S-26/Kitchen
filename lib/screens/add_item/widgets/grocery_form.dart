import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';
import 'shared/custom_input.dart';
import 'shared/custom_dropdown.dart';
import 'shared/category_card.dart';
import 'shared/photo_upload_card.dart';
import 'shared/section_title.dart';

class GroceryForm extends StatefulWidget {
  /// Controllers and state are exposed via GlobalKey<GroceryFormState>
  const GroceryForm({super.key});

  @override
  State<GroceryForm> createState() => GroceryFormState();
}

class GroceryFormState extends State<GroceryForm> {
  int _selectedCategoryIndex = -1;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController shelfController = TextEditingController();
  final TextEditingController minStockController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  int _notesCharCount = 0;

  String? _selectedUnit;
  String? _selectedBlock;
  String? _selectedMinUnit;
  DateTime? _expiryDate;

  // Category labels
  static const List<String> _categoryLabels = [
    'Grains', 'Pulses', 'Spices', 'Oil & Ghee', 'Other'
  ];

  /// Collects all form data as a map
  Map<String, dynamic> get formData => {
    'name': nameController.text.trim(),
    'quantity': double.tryParse(quantityController.text.trim()) ?? 0,
    'unit': _selectedUnit ?? 'g',
    'category': _selectedCategoryIndex >= 0 ? _categoryLabels[_selectedCategoryIndex] : '',
    'block': _selectedBlock ?? '',
    'shelf': shelfController.text.trim(),
    'minimumStock': double.tryParse(minStockController.text.trim()) ?? 0,
    'expiryDate': _expiryDate,
    'notes': _notesController.text.trim(),
  };

  /// Validates the form — returns error message or null
  String? validate() {
    if (nameController.text.trim().isEmpty) return 'Please enter item name';
    if (quantityController.text.trim().isEmpty) return 'Please enter quantity';
    if (double.tryParse(quantityController.text.trim()) == null) return 'Invalid quantity';
    if (_selectedUnit == null) return 'Please select a unit';
    return null;
  }

  /// Resets the form
  void resetForm() {
    nameController.clear();
    quantityController.clear();
    shelfController.clear();
    minStockController.clear();
    _notesController.clear();
    setState(() {
      _selectedUnit = null;
      _selectedBlock = null;
      _selectedMinUnit = null;
      _selectedCategoryIndex = -1;
      _expiryDate = null;
      _notesCharCount = 0;
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    quantityController.dispose();
    shelfController.dispose();
    minStockController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  Future<void> _pickExpiryDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _expiryDate ?? DateTime.now().add(const Duration(days: 30)),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365 * 5)),
    );
    if (picked != null) {
      setState(() => _expiryDate = picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ─── Item Name ───
        const SectionTitle(title: 'Item Name'),
        const SizedBox(height: 8),
        CustomInput(
          hintText: 'Enter item name (e.g. Sugar)',
          suffixIcon: Iconsax.box,
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
                items: const ['g', 'kg', 'litre', 'ml', 'packet'],
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
                    hintText: 'e.g. Top Shelf',
                    suffixIcon: Iconsax.location,
                    controller: shelfController,
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
          children: [
            Expanded(
              flex: 2,
              child: CustomInput(
                hintText: 'Enter quantity',
                controller: minStockController,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: CustomDropdown(
                hintText: 'Unit',
                items: const ['g', 'kg', 'ml', 'litre'],
                value: _selectedMinUnit,
                onChanged: (val) => setState(() => _selectedMinUnit = val),
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
        CustomInput(
          hintText: _expiryDate != null
              ? '${_expiryDate!.day}/${_expiryDate!.month}/${_expiryDate!.year}'
              : 'Select expiry date',
          prefixIcon: Iconsax.calendar_1,
          suffixIcon: Iconsax.arrow_right_3,
          readOnly: true,
          onTap: _pickExpiryDate,
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
