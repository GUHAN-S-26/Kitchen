import 'package:flutter/material.dart';
import '../../add_item/widgets/shared/custom_input.dart';
import '../../add_item/widgets/shared/custom_dropdown.dart';

class QuantityUsedSection extends StatelessWidget {
  const QuantityUsedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quantity Used',
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
                hintText: 'Enter quantity used',
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: CustomDropdown(
                hintText: 'Unit',
                items: const ['g', 'kg', 'ml', 'litre', 'pcs'],
                value: 'g',
                onChanged: (val) {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
