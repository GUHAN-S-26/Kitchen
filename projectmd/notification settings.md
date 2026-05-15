# Smart Kitchen – Notification Settings Screen UI

## Feature Name

Notification Settings Screen

---

# Reference Design

Use the uploaded Notification Settings reference image for:
- premium settings card layout
- grouped notification sections
- rounded toggle switches
- weekly & monthly summary controls
- modern clean mobile spacing
- soft green accent design
- smooth settings experience

Create a modern Notification Settings screen for the Smart Kitchen app.

---

# Navigation Flow

text
Notifications Screen
↓
Tap "Notification Settings"
↓
Open Notification Settings Screen
↓
Manage Alert Preferences
↓
Save Preferences


---

# Screen Purpose

This screen allows users to:
- manage notification preferences
- enable/disable kitchen alerts
- configure reminder timings
- customize weekly/monthly summaries
- manage quiet hours
- control smart suggestions

---

# Folder Structure

text
lib/
 └── screens/
      └── notification_settings/
           ├── notification_settings_screen.dart
           └── widgets/
                ├── notification_settings_header.dart
                ├── settings_section_card.dart
                ├── settings_toggle_tile.dart
                ├── settings_dropdown_tile.dart
                ├── summary_info_card.dart
                ├── quiet_hours_time_picker.dart
                └── save_preferences_button.dart


---

# Main Screen

## File

text
notification_settings_screen.dart


---

# Screen Layout

Use:
- SafeArea
- SingleChildScrollView
- responsive section cards
- smooth vertical spacing
- sticky save button

Background:
Soft white / light gray

---

# Header Section

## Widget

text
notification_settings_header.dart


---

# Header Contents

## Title

Notification Settings

---

## Subtitle

text
Manage alerts and kitchen reminders


---

## Left Side

Back button

---

## Right Side

Profile avatar

---

# Section 1 — General Notifications

Create rounded premium settings card.

---

## Card Title

text
1. General Notifications


---

## Setting Item 1

### Low Stock Alerts

Subtitle:

text
Notify when stock is running low


Toggle:
ON

Icon:
Green inventory icon

---

## Setting Item 2

### Shopping Checklist Alerts

Subtitle:

text
Notify when items added automatically


Toggle:
ON

Icon:
Blue cart icon

---

## Setting Item 3

### Purchase Updates

Subtitle:

text
Notify after stock refill updates


Toggle:
ON

Icon:
Purple purchase icon

---

# Section 2 — Expiry Reminders

---

## Card Title

text
2. Expiry Reminders


---

## Setting

### Expiry Notifications

Subtitle:

text
Get alerts before item expiry


Toggle:
ON

---

## Reminder Time Dropdown

Options:
- 1 Day Before
- 3 Days Before
- 1 Week Before

Selected:
3 Days Before

---

# Section 3 — Weekly & Monthly Summary

Create premium analytics summary section.

---

## Card Title

text
3. Weekly & Monthly Summary


---

## Weekly Summary

### Title

Weekly Kitchen Summary

Subtitle:

text
Receive weekly kitchen usage report


Toggle:
ON

---

## Weekly Summary Day

Dropdown Options:
- Monday
- Friday
- Sunday

Selected:
Sunday

---

## Monthly Summary

### Title

Monthly Kitchen Summary

Subtitle:

text
Receive monthly kitchen insights


Toggle:
ON

---

## Monthly Summary Date

Dropdown Options:
- 1st Day
- 5th Day
- Last Day

Selected:
1st Day

---

# Summary Includes Card

## Widget

text
summary_info_card.dart


---

# Card Contents

Show:
- Most used items
- Low stock items
- Monthly spending
- Waste tracking
- Refill suggestions

Use:
- green checklist icons
- pastel green background
- rounded container

---

# Section 4 — Sound & Vibration

---

## Card Title

text
4. Sound & Vibration


---

## Setting Item

### Notification Sound

Toggle:
ON

---

## Setting Item

### Vibration

Toggle:
ON

---

# Section 5 — Quiet Hours

Create sleep-mode settings section.

---

## Card Title

text
5. Quiet Hours


---

## Setting

### Quiet Hours

Subtitle:

text
Pause notifications during sleep


Toggle:
ON

---

## Time Range Selector

text
10:00 PM → 07:00 AM


Use:
- dual time picker UI
- moon icon
- sunrise icon
- rounded bordered container

---

# Section 6 — Smart Suggestions

Highlighted AI suggestion card.

---

## Card Title

text
6. Smart Suggestions


---

## Setting

### AI Kitchen Suggestions

Subtitle:

text
Receive smart refill predictions and tips


Toggle:
ON

---

# Save Preferences Button

## Widget

text
save_preferences_button.dart


---

# Button Text

text
Save Preferences


Button Style:
- full width
- green background
- rounded corners
- soft glow shadow

---

# Success Snackbar

After saving:

text
Notification settings updated


---

# Bottom Navigation

Keep existing floating navbar.

---

# Navbar Items

- Home
- Kitchen
- Add
- Usage
- Cart

---

# UI Design Style

Use:
- premium rounded cards
- soft shadows
- minimal spacing
- pastel icons
- smooth toggle interaction
- clean typography

---

# Suggested Flutter Widgets

- Switch
- DropdownButtonFormField
- AnimatedContainer
- ListTile
- Column
- Row
- SafeArea
- InkWell

---

# Suggested Flutter Packages

- google_fonts
- iconsax
- flutter_animate

---

# Suggested Animation Techniques

Use:
- fade animation
- smooth switch transition
- slide-up section animation
- animated dropdown expansion

---

# Responsive Layout Rules

- Avoid fixed width inside Row
- Use Expanded/Flexible
- Prevent RenderFlex overflow
- Responsive spacing
- Support small mobile screens

---

# State Management

Manage:
- toggle states
- dropdown selections
- quiet hours timing
- summary settings

Use:
- Provider / Riverpod / Bloc

---

# UX Goals

User should feel:
- complete notification control
- smart kitchen automation
- premium mobile experience
- organized alert management

The screen should feel:
- modern
- clean
- intelligent
- lightweight
- responsive
- production-ready