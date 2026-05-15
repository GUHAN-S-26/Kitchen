# Smart Kitchen – Profile & Settings Screen UI

## Feature Name

Profile & Settings Screen

---

# Reference Design

Use the uploaded Profile & Settings reference image for:
- premium profile header card
- grouped settings sections
- soft green pastel theme
- rounded cards and tiles
- minimal modern mobile layout
- profile management interface
- clean settings organization

Create a modern Profile & Settings screen for the Smart Kitchen app.

---

# Navigation Flow

text
Home / Any Screen
↓
Tap Profile Avatar
↓
Open Profile & Settings Screen
↓
Manage Account & App Preferences


---

# Screen Purpose

This screen allows users to:
- manage profile information
- customize app preferences
- manage backups and exports
- access notification settings
- control theme and language
- view app information
- logout securely

---

# Folder Structure

text
lib/
 └── screens/
      └── profile/
           ├── profile_settings_screen.dart
           └── widgets/
                ├── profile_header_card.dart
                ├── settings_section_card.dart
                ├── settings_tile.dart
                ├── settings_section_title.dart
                ├── logout_button.dart
                ├── app_version_tile.dart
                └── theme_toggle_tile.dart


---

# Main Screen

## File

text
profile_settings_screen.dart


---

# Screen Layout

Use:
- SafeArea
- SingleChildScrollView
- grouped settings sections
- responsive spacing
- bottom navigation

Background:
Soft light gray / white

---

# Header Section

Top navigation style header.

---

## Left Side

Back button

---

## Center

### Title

text
Profile & Settings


### Subtitle

text
Manage your account and app preferences


---

## Right Side

Rounded settings icon button

---

# Profile Header Card

## Widget

text
profile_header_card.dart


---

# Card Design

Use:
- soft green gradient
- rounded corners
- premium shadow
- large profile image
- floating edit icon

---

# User Details

## Name

text
Bharath


---

## Subtitle

text
Smart Kitchen User


---

## Email

text
bharath@gmail.com


---

# Profile Card Action

Right arrow icon for profile details navigation.

---

# Section 1 — Account

## Section Title

text
Account


Green accent title with icon.

---

# Settings Items

## Edit Profile

Subtitle:

text
Update your personal information


Icon:
User edit icon

---

## Change Photo

Subtitle:

text
Update your profile picture


Icon:
Gallery/image icon

---

## Kitchen Name

Subtitle:

text
Manage your kitchen name


Right Value:

text
My Kitchen


Icon:
Home/kitchen icon

---

# Section 2 — App Settings

## Section Title

text
App Settings


---

# Settings Items

## Dark Mode

Subtitle:

text
Switch between light and dark theme


Right Side:
Toggle Switch

Status:
ON

---

## Language

Subtitle:

text
Select your preferred language


Selected Value:

text
English


---

## Units

Subtitle:

text
Choose your preferred units


Selected Value:

text
kg / g / ml


---

# Section 3 — Data Management

## Section Title

text
Data Management


---

# Settings Items

## Backup Data

Subtitle:

text
Backup your kitchen data


Icon:
Cloud backup icon

---

## Export Data

Subtitle:

text
Export your data to a file


Icon:
Download/export icon

---

## Reset App

Subtitle:

text
Clear all data and reset app


Icon:
Trash/delete icon

Color:
Red warning accent

---

# Reset Confirmation Dialog

Show popup:

text
Are you sure you want to reset the app?


Buttons:
- Cancel
- Reset

---

# Section 4 — More Options

## Section Title

text
More Options


---

# Settings Items

## Notification Settings

Subtitle:

text
Manage alerts and reminders


Navigate:
Notification Settings Screen

---

## Privacy Policy

Subtitle:

text
Learn how we protect your data


---

## Terms & Conditions

Subtitle:

text
Read our terms and conditions


---

## About App

Subtitle:

text
App version and information


Version Badge:

text
v1.0.0


---

# Logout Button

## Widget

text
logout_button.dart


---

# Button Design

Use:
- white background
- red border
- logout icon
- centered text
- rounded corners

---

## Button Text

text
Logout


Subtitle:

text
Sign out from your account


---

# Logout Confirmation Dialog

Show:

text
Are you sure you want to logout?


Buttons:
- Cancel
- Logout

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
- pastel icon backgrounds
- minimal spacing
- soft shadows
- green accent highlights
- modern typography

---

# Suggested Flutter Widgets

- ListTile
- Card
- Switch
- CircleAvatar
- Column
- Row
- Divider
- InkWell
- AnimatedContainer

---

# Suggested Flutter Packages

- google_fonts
- iconsax
- flutter_animate

---

# Suggested Animation Techniques

Use:
- fade animations
- smooth page transition
- animated toggle switch
- profile image hero animation

---

# Responsive Layout Rules

- Avoid fixed widths
- Use Expanded/Flexible
- Prevent RenderFlex overflow
- Use responsive spacing
- Support small mobile devices

---

# UX Goals

User should feel:
- personalized experience
- organized settings control
- secure account management
- premium app quality

The screen should feel:
- clean
- modern
- smooth
- lightweight
- intelligent
- production-ready