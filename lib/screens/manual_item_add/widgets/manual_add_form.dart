import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class ManualAddForm extends StatelessWidget {
  const ManualAddForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.03),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLabel('Item Name *'),
            _buildTextField(
              hint: 'Enter item name (e.g. Coffee, Detergent)',
              suffixIcon: Iconsax.bag_2,
            ),
            const SizedBox(height: 24),
            _buildLabel('Quantity You Want to Buy *'),
            Row(
              children: [
                Expanded(
                  child: _buildTextField(hint: 'Enter quantity'),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildDropdown(
                    hint: 'Select unit',
                    items: ['g', 'kg', 'ml', 'litre', 'packet', 'piece'],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildLabel('Category (Optional)'),
                      _buildDropdown(
                        hint: 'Select category',
                        items: ['Grocery', 'Snacks', 'Cleaning', 'Kitchen', 'Household', 'Other'],
                        prefixIcon: Iconsax.category,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildLabel('Priority'),
                      _buildDropdown(
                        hint: 'Medium',
                        items: ['Low', 'Medium', 'High'],
                        prefixIcon: Iconsax.flag,
                        prefixIconColor: AppColors.iconOrange,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            _buildLabel('Notes (Optional)'),
            _buildTextField(
              hint: 'Add any notes...',
              maxLines: 3,
              suffixWidget: Padding(
                padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
                child: Text(
                  '0/100',
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 10),
                ),
              ),
              alignSuffixBottom: true,
            ),
            const SizedBox(height: 24),
            _buildLabel('Remind Me (Optional)'),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: _buildTextField(
                    hint: 'Select date',
                    prefixIcon: Iconsax.calendar,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.softGreen.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'No reminder',
                      style: TextStyle(
                        color: AppColors.primaryGreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            _buildLabel('Store / Place (Optional)'),
            _buildTextField(
              hint: 'e.g. D-Mart, More, Local Market',
              prefixIcon: Iconsax.location,
            ),
            const SizedBox(height: 24),
            _buildPhotoUpload(),
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
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String hint,
    IconData? prefixIcon,
    IconData? suffixIcon,
    Widget? suffixWidget,
    int maxLines = 1,
    bool alignSuffixBottom = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Stack(
        children: [
          TextFormField(
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: prefixIcon != null ? 12 : 16,
                vertical: maxLines > 1 ? 16 : 14,
              ),
              prefixIcon: prefixIcon != null
                  ? Icon(prefixIcon, color: Colors.grey.shade400, size: 20)
                  : null,
              suffixIcon: suffixIcon != null
                  ? Icon(suffixIcon, color: Colors.grey.shade400, size: 20)
                  : null,
            ),
          ),
          if (suffixWidget != null && alignSuffixBottom)
            Positioned(
              bottom: 0,
              right: 0,
              child: suffixWidget,
            ),
        ],
      ),
    );
  }

  Widget _buildDropdown({
    required String hint,
    required List<String> items,
    IconData? prefixIcon,
    Color? prefixIconColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          hint: Row(
            children: [
              if (prefixIcon != null) ...[
                Icon(prefixIcon, color: prefixIconColor ?? Colors.grey.shade400, size: 18),
                const SizedBox(width: 8),
              ],
              Expanded(
                child: Text(
                  hint,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          icon: const Icon(Icons.keyboard_arrow_down, color: Colors.grey),
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (_) {},
        ),
      ),
    );
  }

  Widget _buildPhotoUpload() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.softGreen.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: CustomPaint(
        painter: _DashedRectPainter(color: AppColors.primaryGreen.withValues(alpha: 0.3)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.softGreen.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    const Icon(Iconsax.camera, color: AppColors.primaryGreen),
                    const SizedBox(height: 4),
                    Text(
                      'Add Photo',
                      style: TextStyle(
                        color: AppColors.primaryGreen,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add a photo (Optional)',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Helps you remember the item easily',
                      style: TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DashedRectPainter extends CustomPainter {
  final Color color;

  _DashedRectPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 6, dashSpace = 4;
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke;

    final RRect rrect = RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      const Radius.circular(16),
    );

    Path path = Path()..addRRect(rrect);
    Path dashPath = Path();

    for (PathMetric measurePath in path.computeMetrics()) {
      double distance = 0.0;
      while (distance < measurePath.length) {
        dashPath.addPath(
          measurePath.extractPath(distance, distance + dashWidth),
          Offset.zero,
        );
        distance += dashWidth + dashSpace;
      }
    }
    canvas.drawPath(dashPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
