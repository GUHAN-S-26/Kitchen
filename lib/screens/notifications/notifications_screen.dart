import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import 'widgets/notification_header.dart';
import 'widgets/notification_filter_chips.dart';
import 'widgets/notification_section_title.dart';
import 'widgets/notification_card.dart';
import 'widgets/notification_settings_card.dart';
import 'widgets/empty_notification_state.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final bool _hasNotifications = true; // Toggle to test empty state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: _hasNotifications
            ? SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const NotificationHeader(),
                      const SizedBox(height: 24),
                      const NotificationFilterChips(),
                      const SizedBox(height: 32),
                      const NotificationSectionTitle(
                        title: 'Today',
                        showMarkAllRead: true,
                      ),
                      const SizedBox(height: 16),
                      // Today's notifications
                      NotificationCard(
                        title: 'Sugar is running low',
                        subtitle: 'Only 400 g left in Block A.',
                        type: NotificationType.lowStock,
                        location: 'Kitchen • Block A',
                        timestamp: '2 mins ago',
                        isUnread: true,
                      ),
                      const SizedBox(height: 12),
                      NotificationCard(
                        title: 'Oil added to Shopping Checklist',
                        subtitle: 'Low stock detected automatically.',
                        type: NotificationType.checklist,
                        location: 'Kitchen • Block B',
                        timestamp: '45 mins ago',
                        isUnread: true,
                      ),
                      const SizedBox(height: 32),
                      const NotificationSectionTitle(title: 'Yesterday'),
                      const SizedBox(height: 16),
                      // Yesterday's notifications
                      NotificationCard(
                        title: 'Rice stock updated',
                        subtitle: '2 kg added in Block B.',
                        type: NotificationType.update,
                        location: 'Kitchen • Block B',
                        timestamp: 'Yesterday',
                        isUnread: false,
                      ),
                      const SizedBox(height: 12),
                      NotificationCard(
                        title: 'New item added to Block C',
                        subtitle: 'Frying Pan added to Block C.',
                        type: NotificationType.system,
                        location: 'Kitchen • Block C',
                        timestamp: 'Yesterday',
                        isUnread: false,
                      ),
                      const SizedBox(height: 12),
                      NotificationCard(
                        title: 'Salt is empty',
                        subtitle: 'No stock left in Drawer B.',
                        type: NotificationType.lowStock, // Could be emptyStock but lowStock icon is orange warning
                        location: 'Kitchen • Drawer B',
                        timestamp: 'Yesterday',
                        isUnread: false,
                      ),
                      const SizedBox(height: 40),
                      const NotificationSettingsCard(),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              )
            : const EmptyNotificationState(),
      ),
    );
  }
}
