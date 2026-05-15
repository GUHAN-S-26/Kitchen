import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../core/theme/app_colors.dart';
import 'widgets/notification_settings_header.dart';
import 'widgets/settings_section_card.dart';
import 'widgets/settings_toggle_tile.dart';
import 'widgets/settings_dropdown_tile.dart';
import 'widgets/summary_info_card.dart';
import 'widgets/quiet_hours_time_picker.dart';
import 'widgets/save_preferences_button.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  State<NotificationSettingsScreen> createState() => _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState extends State<NotificationSettingsScreen> {
  // General Notifications
  bool _lowStockAlerts = true;
  bool _shoppingChecklistAlerts = true;
  bool _purchaseUpdates = true;

  // Expiry Reminders
  bool _expiryNotifications = true;
  String _reminderTime = '3 Days Before';

  // Weekly & Monthly Summary
  bool _weeklySummary = true;
  String _weeklySummaryDay = 'Sunday';
  bool _monthlySummary = true;
  String _monthlySummaryDate = '1st Day';

  // Sound & Vibration
  bool _notificationSound = true;
  bool _vibration = true;

  // Quiet Hours
  bool _quietHoursEnabled = true;
  TimeOfDay _startTime = const TimeOfDay(hour: 22, minute: 0); // 10:00 PM
  TimeOfDay _endTime = const TimeOfDay(hour: 7, minute: 0); // 07:00 AM

  // Smart Suggestions
  bool _aiSuggestions = true;

  Future<void> _selectTime(BuildContext context, bool isStart) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: isStart ? _startTime : _endTime,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.primaryGreen,
              onPrimary: Colors.white,
              onSurface: AppColors.textPrimary,
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() {
        if (isStart) {
          _startTime = picked;
        } else {
          _endTime = picked;
        }
      });
    }
  }

  void _savePreferences() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Row(
          children: [
            Icon(Icons.check_circle, color: Colors.white),
            SizedBox(width: 8),
            Text('Notification settings updated'),
          ],
        ),
        backgroundColor: AppColors.primaryGreen,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(24),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const NotificationSettingsHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Section 1 - General Notifications
                    SettingsSectionCard(
                      title: '1. General Notifications',
                      children: [
                        SettingsToggleTile(
                          title: 'Low Stock Alerts',
                          subtitle: 'Notify when stock is running low',
                          icon: Iconsax.box_time,
                          iconColor: AppColors.iconGreen,
                          value: _lowStockAlerts,
                          onChanged: (val) => setState(() => _lowStockAlerts = val),
                        ),
                        SettingsToggleTile(
                          title: 'Shopping Checklist Alerts',
                          subtitle: 'Notify when items added automatically',
                          icon: Iconsax.shopping_cart,
                          iconColor: AppColors.iconBlue,
                          value: _shoppingChecklistAlerts,
                          onChanged: (val) => setState(() => _shoppingChecklistAlerts = val),
                        ),
                        SettingsToggleTile(
                          title: 'Purchase Updates',
                          subtitle: 'Notify after stock refill updates',
                          icon: Iconsax.receipt_2_1,
                          iconColor: AppColors.iconPurple,
                          value: _purchaseUpdates,
                          onChanged: (val) => setState(() => _purchaseUpdates = val),
                          showDivider: false,
                        ),
                      ],
                    ),

                    // Section 2 - Expiry Reminders
                    SettingsSectionCard(
                      title: '2. Expiry Reminders',
                      children: [
                        SettingsToggleTile(
                          title: 'Expiry Notifications',
                          subtitle: 'Get alerts before item expiry',
                          value: _expiryNotifications,
                          onChanged: (val) => setState(() => _expiryNotifications = val),
                        ),
                        SettingsDropdownTile(
                          title: 'Reminder Time',
                          value: _reminderTime,
                          items: const ['1 Day Before', '3 Days Before', '1 Week Before'],
                          onChanged: (val) => setState(() => _reminderTime = val!),
                          showDivider: false,
                        ),
                      ],
                    ),

                    // Section 3 - Weekly & Monthly Summary
                    SettingsSectionCard(
                      title: '3. Weekly & Monthly Summary',
                      children: [
                        SettingsToggleTile(
                          title: 'Weekly Kitchen Summary',
                          subtitle: 'Receive weekly kitchen usage report',
                          value: _weeklySummary,
                          onChanged: (val) => setState(() => _weeklySummary = val),
                        ),
                        if (_weeklySummary)
                          SettingsDropdownTile(
                            title: 'Summary Day',
                            value: _weeklySummaryDay,
                            items: const ['Monday', 'Friday', 'Sunday'],
                            onChanged: (val) => setState(() => _weeklySummaryDay = val!),
                          ),
                        SettingsToggleTile(
                          title: 'Monthly Kitchen Summary',
                          subtitle: 'Receive monthly kitchen insights',
                          value: _monthlySummary,
                          onChanged: (val) => setState(() => _monthlySummary = val),
                          showDivider: _monthlySummary, // Only show divider if dropdown follows
                        ),
                        if (_monthlySummary)
                          SettingsDropdownTile(
                            title: 'Summary Date',
                            value: _monthlySummaryDate,
                            items: const ['1st Day', '5th Day', 'Last Day'],
                            onChanged: (val) => setState(() => _monthlySummaryDate = val!),
                            showDivider: false,
                          ),
                        const SizedBox(height: 16),
                        const SummaryInfoCard(),
                      ],
                    ),

                    // Section 4 - Sound & Vibration
                    SettingsSectionCard(
                      title: '4. Sound & Vibration',
                      children: [
                        SettingsToggleTile(
                          title: 'Notification Sound',
                          value: _notificationSound,
                          onChanged: (val) => setState(() => _notificationSound = val),
                        ),
                        SettingsToggleTile(
                          title: 'Vibration',
                          value: _vibration,
                          onChanged: (val) => setState(() => _vibration = val),
                          showDivider: false,
                        ),
                      ],
                    ),

                    // Section 5 - Quiet Hours
                    SettingsSectionCard(
                      title: '5. Quiet Hours',
                      children: [
                        SettingsToggleTile(
                          title: 'Quiet Hours',
                          subtitle: 'Pause notifications during sleep',
                          value: _quietHoursEnabled,
                          onChanged: (val) => setState(() => _quietHoursEnabled = val),
                          showDivider: _quietHoursEnabled,
                        ),
                        if (_quietHoursEnabled)
                          QuietHoursTimePicker(
                            startTime: _startTime,
                            endTime: _endTime,
                            onStartTimeTap: () => _selectTime(context, true),
                            onEndTimeTap: () => _selectTime(context, false),
                          ),
                      ],
                    ),

                    // Section 6 - Smart Suggestions
                    SettingsSectionCard(
                      title: '6. Smart Suggestions',
                      children: [
                        SettingsToggleTile(
                          title: 'AI Kitchen Suggestions',
                          subtitle: 'Receive smart refill predictions and tips',
                          value: _aiSuggestions,
                          onChanged: (val) => setState(() => _aiSuggestions = val),
                          showDivider: false,
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            SavePreferencesButton(onPressed: _savePreferences),
          ],
        ),
      ),
    );
  }
}
