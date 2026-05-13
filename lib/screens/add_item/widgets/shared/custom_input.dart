import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final int maxLines;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final bool readOnly;

  const CustomInput({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
    this.controller,
    this.onChanged,
    this.onTap,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      readOnly: readOnly,
      onChanged: onChanged,
      onTap: onTap,
      style: const TextStyle(fontSize: 14, color: AppColors.textPrimary),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: AppColors.textSecondary.withValues(alpha: 0.7), fontSize: 14),
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, size: 20, color: AppColors.textSecondary)
            : null,
        suffixIcon: suffixIcon != null
            ? Icon(suffixIcon, size: 20, color: AppColors.textSecondary)
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
    );
  }
}
