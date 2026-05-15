import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/theme/app_colors.dart';

class QuietHoursTimePicker extends StatelessWidget {
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  final VoidCallback onStartTimeTap;
  final VoidCallback onEndTimeTap;

  const QuietHoursTimePicker({
    super.key,
    required this.startTime,
    required this.endTime,
    required this.onStartTimeTap,
    required this.onEndTimeTap,
  });

  String _formatTime(TimeOfDay time) {
    final hour = time.hourOfPeriod == 0 ? 12 : time.hourOfPeriod;
    final minute = time.minute.toString().padLeft(2, '0');
    final period = time.period == DayPeriod.am ? 'AM' : 'PM';
    return '$hour:$minute $period';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTimeSelector(
            context,
            icon: Iconsax.moon,
            iconColor: Colors.indigo,
            label: 'Start',
            time: _formatTime(startTime),
            onTap: onStartTimeTap,
          ),
          const Icon(Iconsax.arrow_right_1, color: AppColors.textSecondary, size: 20),
          _buildTimeSelector(
            context,
            icon: Icons.wb_sunny_outlined,
            iconColor: Colors.orange,
            label: 'End',
            time: _formatTime(endTime),
            onTap: onEndTimeTap,
          ),
        ],
      ),
    );
  }

  Widget _buildTimeSelector(
    BuildContext context, {
    required IconData icon,
    required Color iconColor,
    required String label,
    required String time,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: 20),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: AppColors.textSecondary,
                    ),
              ),
              const SizedBox(height: 2),
              Text(
                time,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
