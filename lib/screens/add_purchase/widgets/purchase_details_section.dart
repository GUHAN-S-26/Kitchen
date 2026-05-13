import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../add_item/widgets/shared/custom_input.dart';
import '../../add_item/widgets/shared/custom_dropdown.dart';

class PurchaseDetailsSection extends StatelessWidget {
  const PurchaseDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Purchase Details',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 2,
              child: CustomInput(
                hintText: 'Enter quantity bought',
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: CustomDropdown(
                hintText: 'Unit',
                items: const ['g', 'kg', 'ml', 'litre', 'packet'],
                value: 'kg',
                onChanged: (val) {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const CustomInput(
          hintText: 'Enter amount',
          prefixIcon: Icons.currency_rupee, // using rupees as per ₹ specification
        ),
        const SizedBox(height: 16),
        const CustomInput(
          hintText: 'e.g. DMart, Reliance Fresh',
        ),
      ],
    );
  }
}
