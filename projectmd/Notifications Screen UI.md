# Smart Kitchen – Notifications Screen UI

## Feature Name

Notifications Screen

---

# Reference Design

Use the uploaded Notifications screen reference image for:
- modern notification list layout
- category filter chips
- grouped notification sections
- unread notification indicators
- rounded premium cards
- minimal clean mobile UI
- smart kitchen alert experience

Create a modern Notifications screen for the Smart Kitchen app.

---

# Navigation Flow

text
Home / Kitchen / Usage
↓
Tap Notification Bell Icon
↓
Open Notifications Screen
↓
View Alerts & Updates
↓
Manage Notification Status


---

# Screen Purpose

This screen is used to:
- show low stock alerts
- notify shopping checklist updates
- track recent stock changes
- show kitchen activity
- display reminders
- manage notification history

---

# Folder Structure

text
lib/
 └── screens/
      └── notifications/
           ├── notifications_screen.dart
           └── widgets/
                ├── notification_header.dart
                ├── notification_filter_chips.dart
                ├── notification_section_title.dart
                ├── notification_card.dart
                ├── unread_indicator.dart
                ├── notification_settings_card.dart
                └── empty_notification_state.dart


---

# Main Screen

## File

text
notifications_screen.dart


---

# Screen Layout

Use:
- SafeArea
- SingleChildScrollView
- Column layout
- responsive spacing
- section grouping

Background:
Light gray / white

---

# Header Section

## Widget

text
notification_header.dart


---

# Header Contents

## Title

Notifications

---

## Subtitle

Stay updated with your kitchen.

---

## Right Side

- Notification Bell
- Profile Avatar

---

# Filter Chips Section

## Widget

text
notification_filter_chips.dart


---

# Filter Categories

## All

Badge count:
28

---

## Low Stock

Badge count:
10

---

## Checklist

Badge count:
7

---

## Updates

Badge count:
6

---

## System

Badge count:
5

---

# Chip Design

Use:
- rounded pill shape
- pastel background
- active green highlight
- soft shadow
- smooth selection animation

---

# Notification Grouping

Create grouped sections:

---

## Today

Latest notifications.

---

## Yesterday

Older notifications.

---

# Notification Card

## Widget

text
notification_card.dart


---

# Card Layout

## Left Side

Rounded colored icon container.

---

## Center

Notification title + subtitle.

---

## Right Side

- timestamp
- unread indicator
- more options icon

---

# Notification Examples

## Low Stock Alert

text
Sugar is running low
Only 400 g left in Block A.


---

## Checklist Update

text
Oil added to Shopping Checklist
Low stock detected automatically.


---

## Stock Updated

text
Rice stock updated
2 kg added in Block B.


---

## Item Added

text
New item added to Block C
Frying Pan added to Block C.


---

## Empty Stock Alert

text
Salt is empty
No stock left in Drawer B.


---

# Notification Metadata

Show:
- location
- timestamp
- status indicator

Example:

text
Kitchen • Block A
2 mins ago


---

# Unread Indicator

## Widget

text
unread_indicator.dart


---

# Behavior

Unread:
- green dot
- highlighted card
- stronger shadow

Read:
- faded indicator
- softer background

---

# More Options Menu

Use popup menu.

---

# Options

- Mark as Read
- Delete
- Archive

---

# Mark All As Read

Button placed near "Today" section.

---

# Action

Marks all unread notifications as read.

---

# Notification Settings Card

## Widget

text
notification_settings_card.dart


---

# Card Contents

## Title

Notification Settings

---

## Subtitle

Manage alerts and preferences

---

## Right Arrow

Navigate to settings screen.

---

# Bottom Navigation

Use existing floating navbar.

---

# Navbar Items

- Home
- Kitchen
- Add
- Usage
- Cart

---

# Notification Bell Badge

Show unread notification count.

Example:

text
3


---

# UI Requirements

- Use Flutter Material 3
- Responsive mobile layout
- Rounded cards
- Soft shadows
- Smooth interactions
- Premium minimal UI
- Clean typography

---

# Suggested Flutter Widgets

- ListView.separated
- SingleChildScrollView
- Wrap
- Column
- Row
- PopupMenuButton
- ChoiceChip
- AnimatedContainer
- InkWell

---

# Suggested Flutter Packages

- google_fonts
- iconsax
- flutter_animate
- badges

---

# Suggested Animation Techniques

Use:
- FadeTransition
- SlideTransition
- AnimatedSwitcher
- Smooth chip selection animation
- List item fade animation

---

# Notification Types

## Low Stock

Orange warning icon.

---

## Checklist

Blue cart icon.

---

## Updates

Green success icon.

---

## System

Purple system icon.

---

# Responsive Layout Rules

- Avoid fixed width inside Row
- Use Expanded/Flexible
- Use ellipsis for long text
- Prevent RenderFlex overflow
- Use responsive padding
- Support small devices

---

# Empty State Design

If no notifications available:

Show:
- bell illustration
- friendly message
- refresh button

Example:

text
No notifications yet
Your kitchen updates will appear here.


---

# State Management Logic

Notification states:
- unread
- read
- archived
- deleted

Filter dynamically based on category.

---

# UX Goals

User should feel:
- informed
- organized
- updated instantly
- smart kitchen assistance

The screen should feel:
- premium
- modern
- responsive
- lightweight
- intelligent
- helpful