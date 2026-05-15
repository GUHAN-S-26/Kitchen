import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../core/theme/app_colors.dart';
import '../notification_settings/notification_settings_screen.dart';
import 'widgets/profile_header_card.dart';
import 'widgets/profile_section_card.dart';
import 'widgets/profile_settings_tile.dart';
import 'widgets/logout_button.dart';

class ProfileSettingsScreen extends StatefulWidget {
  const ProfileSettingsScreen({super.key});

  @override
  State<ProfileSettingsScreen> createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  bool _isDarkMode = false;

  void _showResetDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Row(
          children: [
            Icon(Iconsax.warning_2, color: Colors.red),
            SizedBox(width: 8),
            Text('Reset App'),
          ],
        ),
        content: const Text('Are you sure you want to clear all data and reset the app? This action cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel', style: TextStyle(color: AppColors.textSecondary)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('App data reset successfully')),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            child: const Text('Reset'),
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Row(
          children: [
            Icon(Iconsax.logout, color: Colors.red),
            SizedBox(width: 8),
            Text('Logout'),
          ],
        ),
        content: const Text('Are you sure you want to sign out of your account?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel', style: TextStyle(color: AppColors.textSecondary)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              // Handle actual logout here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            child: const Text('Logout'),
          ),
        ],
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
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.cardBackground,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: const Icon(Iconsax.arrow_left_2, size: 20, color: AppColors.textPrimary),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Profile & Settings',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Manage your account',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: AppColors.textSecondary,
                            ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.cardBackground,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: const Icon(Iconsax.setting_4, size: 20, color: AppColors.textPrimary),
                  ),
                ],
              ),
            ),
            
            // Scrollable Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
                child: Column(
                  children: [
                    const ProfileHeaderCard(),
                    const SizedBox(height: 24),

                    // Section 1 - Account
                    ProfileSectionCard(
                      title: 'Account',
                      icon: Iconsax.user,
                      children: [
                        ProfileSettingsTile(
                          icon: Iconsax.user_edit,
                          iconColor: AppColors.iconBlue,
                          title: 'Edit Profile',
                          subtitle: 'Update your personal information',
                          onTap: () {},
                        ),
                        ProfileSettingsTile(
                          icon: Iconsax.gallery,
                          iconColor: AppColors.iconPurple,
                          title: 'Change Photo',
                          subtitle: 'Update your profile picture',
                          onTap: () {},
                        ),
                        ProfileSettingsTile(
                          icon: Iconsax.home_2,
                          iconColor: AppColors.iconGreen,
                          title: 'Kitchen Name',
                          subtitle: 'Manage your kitchen name',
                          trailing: const Text(
                            'My Kitchen',
                            style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.primaryGreen),
                          ),
                          onTap: () {},
                          showDivider: false,
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // Section 2 - App Settings
                    ProfileSectionCard(
                      title: 'App Settings',
                      icon: Iconsax.setting_2,
                      children: [
                        ProfileSettingsTile(
                          icon: Iconsax.moon,
                          iconColor: Colors.indigo,
                          title: 'Dark Mode',
                          subtitle: 'Switch between light and dark theme',
                          trailing: Switch(
                            value: _isDarkMode,
                            onChanged: (val) {
                              setState(() {
                                _isDarkMode = val;
                              });
                            },
                            activeColor: Colors.white,
                            activeTrackColor: AppColors.primaryGreen,
                          ),
                          onTap: () {
                            setState(() {
                              _isDarkMode = !_isDarkMode;
                            });
                          },
                        ),
                        ProfileSettingsTile(
                          icon: Iconsax.language_square,
                          iconColor: Colors.orange,
                          title: 'Language',
                          subtitle: 'Select your preferred language',
                          trailing: const Row(
                            children: [
                              Text('English', style: TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(width: 4),
                              Icon(Icons.arrow_forward_ios, size: 14, color: AppColors.textSecondary),
                            ],
                          ),
                          onTap: () {},
                        ),
                        ProfileSettingsTile(
                          icon: Iconsax.ruler,
                          iconColor: Colors.teal,
                          title: 'Units',
                          subtitle: 'Choose your preferred units',
                          trailing: const Row(
                            children: [
                              Text('kg / g / ml', style: TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(width: 4),
                              Icon(Icons.arrow_forward_ios, size: 14, color: AppColors.textSecondary),
                            ],
                          ),
                          onTap: () {},
                          showDivider: false,
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // Section 3 - Data Management
                    ProfileSectionCard(
                      title: 'Data Management',
                      icon: Iconsax.data,
                      children: [
                        ProfileSettingsTile(
                          icon: Iconsax.cloud_plus,
                          iconColor: Colors.blue,
                          title: 'Backup Data',
                          subtitle: 'Backup your kitchen data',
                          onTap: () {},
                        ),
                        ProfileSettingsTile(
                          icon: Iconsax.document_download,
                          iconColor: Colors.green,
                          title: 'Export Data',
                          subtitle: 'Export your data to a file',
                          onTap: () {},
                        ),
                        ProfileSettingsTile(
                          icon: Iconsax.trash,
                          iconColor: Colors.red,
                          title: 'Reset App',
                          subtitle: 'Clear all data and reset app',
                          titleColor: Colors.red,
                          onTap: () => _showResetDialog(context),
                          showDivider: false,
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // Section 4 - More Options
                    ProfileSectionCard(
                      title: 'More Options',
                      icon: Iconsax.category,
                      children: [
                        ProfileSettingsTile(
                          icon: Iconsax.notification,
                          iconColor: Colors.amber,
                          title: 'Notification Settings',
                          subtitle: 'Manage alerts and reminders',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => const NotificationSettingsScreen()),
                            );
                          },
                        ),
                        ProfileSettingsTile(
                          icon: Iconsax.shield_tick,
                          iconColor: Colors.blueGrey,
                          title: 'Privacy Policy',
                          subtitle: 'Learn how we protect your data',
                          onTap: () {},
                        ),
                        ProfileSettingsTile(
                          icon: Iconsax.document_text,
                          iconColor: Colors.brown,
                          title: 'Terms & Conditions',
                          subtitle: 'Read our terms and conditions',
                          onTap: () {},
                        ),
                        ProfileSettingsTile(
                          icon: Iconsax.info_circle,
                          iconColor: AppColors.primaryGreen,
                          title: 'About App',
                          subtitle: 'App version and information',
                          trailing: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: AppColors.primaryGreen.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'v1.0.0',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryGreen,
                              ),
                            ),
                          ),
                          onTap: () {},
                          showDivider: false,
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),

                    // Logout Button
                    LogoutButton(onTap: () => _showLogoutDialog(context)),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
