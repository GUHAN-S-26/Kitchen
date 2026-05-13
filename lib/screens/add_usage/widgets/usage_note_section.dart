import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../add_item/widgets/shared/custom_input.dart';

class UsageNoteSection extends StatefulWidget {
  const UsageNoteSection({super.key});

  @override
  State<UsageNoteSection> createState() => _UsageNoteSectionState();
}

class _UsageNoteSectionState extends State<UsageNoteSection> {
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
              'Usage Note',
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
          hintText: 'Add a note about this usage...',
          maxLines: 4,
        ),
      ],
    );
  }
}
