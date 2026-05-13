import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class CustomDropdown extends StatelessWidget {
  final String hintText;
  final List<String> items;
  final String? value;
  final ValueChanged<String?>? onChanged;
  final IconData? prefixIcon;

  const CustomDropdown({
    super.key,
    required this.hintText,
    required this.items,
    this.value,
    this.onChanged,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: value,
      isExpanded: true,
      icon: const Icon(Icons.keyboard_arrow_down_rounded, color: AppColors.textSecondary),
      decoration: InputDecoration(
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, size: 20, color: AppColors.textSecondary)
            : null,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        filled: true,
        fillColor: Colors.transparent,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.primaryGreen, width: 1.5),
        ),
      ),
      hint: Text(
        hintText,
        style: TextStyle(color: AppColors.textSecondary.withValues(alpha: 0.7), fontSize: 14),
        overflow: TextOverflow.ellipsis,
      ),
      items: items.map((String val) {
        return DropdownMenuItem<String>(
          value: val,
          child: Text(
            val,
            style: const TextStyle(fontSize: 14),
            overflow: TextOverflow.ellipsis,
          ),
        );
      }).toList(),
      onChanged: onChanged ?? (_) {},
    );
  }
}
