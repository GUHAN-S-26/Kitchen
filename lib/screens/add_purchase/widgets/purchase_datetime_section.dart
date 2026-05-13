import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../add_item/widgets/shared/custom_input.dart';

class PurchaseDatetimeSection extends StatelessWidget {
  const PurchaseDatetimeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Date & Time',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: CustomInput(
                hintText: 'May 13, 2025',
                prefixIcon: Iconsax.calendar_1,
                readOnly: true,
                onTap: () {
                  // Show date picker
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CustomInput(
                hintText: '09:41 AM',
                prefixIcon: Iconsax.clock,
                readOnly: true,
                onTap: () {
                  // Show time picker
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
