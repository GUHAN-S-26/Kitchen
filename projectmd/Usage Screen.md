# Smart Kitchen – Add Usage Screen UI

## Feature Name

Add Usage Screen

---

# Reference Design

Use the uploaded Add Usage screen reference image for:
- clean stock tracking layout
- quantity usage flow
- green stock progress bar
- quick quantity chips
- modern form sections
- rounded premium cards
- minimal mobile UI
- smart remaining stock preview

Create a modern Add Usage screen for the Smart Kitchen app.

---

# Navigation Flow

Usage Screen
↓
Tap "Add Usage"
↓
Open Add Usage Screen
↓
Select Item
↓
Enter Used Quantity
↓
Save Usage
↓
Stock Updates Automatically

---

# Screen Purpose

This screen is used to:
- reduce grocery quantity
- track kitchen usage
- update stock automatically
- maintain usage history
- trigger low stock alerts
- generate shopping checklist reminders

---

# Folder Structure

text
lib/
 └── screens/
      └── add_usage/
           ├── add_usage_screen.dart
           └── widgets/
                ├── add_usage_header.dart
                ├── item_selector_card.dart
                ├── stock_overview_card.dart
                ├── quantity_used_section.dart
                ├── quick_select_chips.dart
                ├── remaining_stock_card.dart
                ├── usage_note_section.dart
                ├── usage_datetime_section.dart
                └── save_usage_button.dart


---

# Main Screen

## File

text
add_usage_screen.dart


---

# Screen Layout

Use:
- SafeArea
- SingleChildScrollView
- Column layout
- bottom spacing
- responsive paddings

Background:
Light gray / white

---

# Header Section

## Widget

text
add_usage_header.dart


---

# Header Contents

## Left Side

Back Button

---

## Title

Add Usage

---

## Subtitle

Track item usage and reduce stock

---

## Right Side

- Notification Icon
- Profile Avatar

---

# Item Selection Section

## Widget

text
item_selector_card.dart


---

# Features

## Search Field

Placeholder:

text
Search item (e.g. Rice, Sugar, Oil)


---

## Filter Button

Rounded square icon button.

---

## Selected Item Card

Show:
- item image
- item name
- block location
- dropdown arrow

Example:

text
Basmati Rice
Kitchen • Block A • Top Shelf


---

# Stock Overview Card

## Widget

text
stock_overview_card.dart


---

# Card Contents

## Current Stock

Example:

text
1.2 kg


---

## Unit Display

Example:

text
Unit: kg


---

## Progress Bar

Green animated stock bar.

---

## Bottom Stats

Left:
Used quantity

Right:
Remaining quantity + percentage

Example:

text
Used: 800 g
Remaining: 400 g (33%)


---

# Quantity Used Section

## Widget

text
quantity_used_section.dart


---

# Features

## Quantity Input

Placeholder:

text
Enter quantity used


---

## Unit Dropdown

Units:
- g
- kg
- ml
- litre
- pcs

---

# Quick Select Chips

## Widget

text
quick_select_chips.dart


---

# Quick Buttons

Create rounded outline chips:

text
+10 g
+50 g
+100 g
+250 g
+500 g


---

# Chip Design

Use:
- green outline
- rounded pill shape
- smooth tap animation
- soft background on selected state

---

# Remaining Stock Card

## Widget

text
remaining_stock_card.dart


---

# Card Purpose

Preview remaining stock after usage.

---

# Card Contents

## Remaining Quantity

Example:

text
400 g


---

## Status Badge

Example:

text
Safe Stock


---

## Message

Example:

text
This is above the minimum stock alert.


---

# Status States

## Safe Stock

Green badge

---

## Low Stock

Orange badge

---

## Critical

Red badge

---

# Usage Note Section

## Widget

text
usage_note_section.dart


---

# Features

## Multiline Text Area

Placeholder:

text
Add a note about this usage...


---

## Character Counter

Example:

text
0/120


---

# Usage Date & Time

## Widget

text
usage_datetime_section.dart


---

# Features

## Date Picker

Example:

text
May 13, 2025


---

## Time Picker

Example:

text
09:41 AM


---

# Save Button

## Widget

text
save_usage_button.dart


---

# Button Design

Large rounded green button.

---

## Label

text
Save Usage


---

## Icon

Check Circle icon

---

# Bottom Navigation Bar

Use existing floating navbar.

---

# Navbar Items

- Home
- Kitchen
- Add
- Usage
- Cart

---

# Selected Tab

Usage

Green active highlight.

---

# UI Requirements

- Use Flutter Material 3
- Responsive mobile layout
- Smooth animations
- Rounded cards
- Soft shadows
- Modern spacing
- Premium form design
- Minimal clean UI

---

# Suggested Flutter Widgets

- SingleChildScrollView
- Column
- Expanded
- Wrap
- TextFormField
- DropdownButtonFormField
- AnimatedContainer
- LinearProgressIndicator
- ChoiceChip
- Stack

---

# Suggested Flutter Packages

- google_fonts
- iconsax
- intl
- flutter_animate

---

# Suggested Animation Techniques

Use:
- FadeTransition
- AnimatedSwitcher
- ScaleTransition
- AnimatedContainer
- Smooth progress animation

---

# Responsive Layout Rules

- Avoid fixed width inside Row
- Use Expanded/Flexible
- Use SingleChildScrollView
- Use SafeArea
- Prevent RenderFlex overflow
- Make responsive for small screens

---

# State Management Logic

When user enters quantity:
- auto calculate remaining stock
- update progress bar
- update status badge

---

# Validation Rules

- quantity cannot exceed stock
- quantity required
- unit required

---

# UX Goals

User should feel:
- fast inventory update
- smart stock tracking
- simple interaction
- smooth experience

The screen should feel:
- modern
- premium
- organized
- responsive
- intelligent
- lightweight