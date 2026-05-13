import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class AddItemForm extends StatelessWidget {
  const AddItemForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLabel('Item Name'),
            _buildTextField(hintText: 'Enter item name (e.g. Sugar)', suffixIcon: Iconsax.box),
            const SizedBox(height: 20),
            
            _buildLabel('Quantity'),
            Row(
              children: [
                Expanded(child: _buildTextField(hintText: 'Enter quantity')),
                const SizedBox(width: 16),
                Expanded(child: _buildDropdown(hintText: 'Select Unit', items: ['g', 'kg', 'ml', 'litre', 'packet'])),
              ],
            ),
            const SizedBox(height: 20),
            
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildLabel('Select Block'),
                      _buildDropdown(hintText: 'Kitchen • Block A', items: ['Kitchen • Block A', 'Kitchen • Block B', 'Pantry']),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildLabel('Location (Optional)'),
                      _buildTextField(hintText: 'e.g. Top Shelf', suffixIcon: Iconsax.location),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            _buildLabel('Category (Optional)'),
            const SizedBox(height: 8),
            _CategoryList(),
            const SizedBox(height: 24),
            
            _buildLabel('Minimum Stock Alert'),
            Text(
              'Get notified when stock is low',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textSecondary),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(flex: 2, child: _buildTextField(hintText: 'Enter quantity')),
                const SizedBox(width: 16),
                Expanded(flex: 1, child: _buildDropdown(hintText: 'Unit', items: ['g', 'kg', 'ml', 'litre'])),
              ],
            ),
            const SizedBox(height: 20),
            
            _buildLabel('Expiry Date (Optional)'),
            _buildTextField(
              hintText: 'Select expiry date', 
              prefixIcon: Iconsax.calendar_1, 
              suffixIcon: Iconsax.arrow_right_3
            ),
            const SizedBox(height: 20),
            
            _buildLabel('Notes (Optional)'),
            _buildTextField(
              hintText: 'Add any notes...',
              maxLines: 4,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  '0/100',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textSecondary),
                ),
              ),
            ),
            const SizedBox(height: 20),
            
            _buildLabel('Add Photo (Optional)'),
            Text(
              'Add a photo for quick identification',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.textSecondary),
            ),
            const SizedBox(height: 12),
            _PhotoUpload(),
            const SizedBox(height: 32),
            
            // Save Button
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Iconsax.save_2, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      'Save Item',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }

  Widget _buildTextField({required String hintText, IconData? prefixIcon, IconData? suffixIcon, int maxLines = 1}) {
    return TextFormField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: AppColors.textSecondary, fontSize: 14),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon, size: 20, color: AppColors.textSecondary) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon, size: 20, color: AppColors.textSecondary) : null,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        filled: true,
        fillColor: Colors.transparent,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.primaryGreen),
        ),
      ),
    );
  }

  Widget _buildDropdown({required String hintText, required List<String> items}) {
    return DropdownButtonFormField<String>(
      isExpanded: true,
      icon: const Icon(Icons.keyboard_arrow_down, color: AppColors.textSecondary),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        filled: true,
        fillColor: Colors.transparent,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.primaryGreen),
        ),
      ),
      hint: Text(
        hintText, 
        style: const TextStyle(color: AppColors.textSecondary, fontSize: 14),
        overflow: TextOverflow.ellipsis,
      ),
      items: items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value, 
            style: const TextStyle(fontSize: 14),
            overflow: TextOverflow.ellipsis,
          ),
        );
      }).toList(),
      onChanged: (_) {},
    );
  }
}

class _CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _CategoryCard(title: 'Grains', icon: Icons.grass, iconColor: Colors.orange.shade700), // Note: using standard material icon since wheat is missing in iconsax
          _CategoryCard(title: 'Pulses', icon: Iconsax.box, iconColor: AppColors.iconGreen),
          _CategoryCard(title: 'Spices', icon: Iconsax.fatrows, iconColor: AppColors.iconRed),
          _CategoryCard(title: 'Oil & Ghee', icon: Iconsax.glass, iconColor: Colors.amber.shade700),
          _CategoryCard(title: 'More', icon: Iconsax.category, iconColor: AppColors.textSecondary),
        ],
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;

  const _CategoryCard({required this.title, required this.icon, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        children: [
          Icon(icon, color: iconColor),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class _PhotoUpload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.softGreen,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.primaryGreen.withOpacity(0.3),
          style: BorderStyle.solid,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Iconsax.camera, color: AppColors.iconGreen, size: 32),
          const SizedBox(height: 8),
          Text(
            'Add Photo',
            style: TextStyle(
              color: AppColors.iconGreen,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
