import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../add_item/widgets/shared/custom_input.dart';

class PurchaseNoteSection extends StatefulWidget {
  const PurchaseNoteSection({super.key});

  @override
  State<PurchaseNoteSection> createState() => _PurchaseNoteSectionState();
}

class _PurchaseNoteSectionState extends State<PurchaseNoteSection> {
  final TextEditingController _controller = TextEditingController();
  int _charCount = 0;
  final int _maxChars = 120;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _charCount = _controller.text.length;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Purchase Notes',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '$_charCount/$_maxChars',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: _charCount > _maxChars ? Colors.red : AppColors.textSecondary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        CustomInput(
          controller: _controller,
          hintText: 'Add any notes about this purchase...',
          maxLines: 4,
        ),
      ],
    );
  }
}
