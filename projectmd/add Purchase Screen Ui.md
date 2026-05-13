# Smart Kitchen – 

## Feature Name

Add Purchase Screen

---

# Reference Design

Use the uploaded Add Purchase screen reference image for:
- modern stock refill layout
- clean form structure
- purchase quantity workflow
- updated stock preview card
- bill upload section
- rounded premium cards
- minimal mobile UI
- smart inventory refill experience

Create a modern Add Purchase screen for the Smart Kitchen app.

---

# Navigation Flow

text
Usage Dashboard
↓
Tap "+"
↓
Wave Menu
↓
Add Purchase
↓
Open Add Purchase Screen
↓
Update Stock
↓
Save Purchase


---

# Screen Purpose

This screen is used to:
- refill grocery stock
- update inventory after shopping
- store purchase quantity
- save purchase price
- upload bill/receipt
- update shopping checklist
- maintain purchase history

---

# Folder Structure

text
lib/
 └── screens/
      └── add_purchase/
           ├── add_purchase_screen.dart
           └── widgets/
                ├── add_purchase_header.dart
                ├── purchase_item_selector.dart
                ├── current_stock_card.dart
                ├── purchase_details_section.dart
                ├── receipt_upload_card.dart
                ├── updated_stock_preview.dart
                ├── purchase_datetime_section.dart
                ├── purchase_note_section.dart
                └── save_purchase_button.dart


---

# Main Screen

## File

text
add_purchase_screen.dart


---

# Screen Layout

Use:
- SafeArea
- SingleChildScrollView
- Column layout
- responsive spacing
- bottom safe padding

Background:
Light gray / white

---

# Header Section

## Widget

text
add_purchase_header.dart


---

# Header Contents

## Left Side

Back Button

---

## Title

Add Purchase

---

## Subtitle

Update stock after shopping

---

## Right Side

- Notification icon
- Profile avatar

---

# Item Selection Section

## Widget

text
purchase_item_selector.dart


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
- kitchen block
- shelf location
- dropdown arrow

Example:

text
Basmati Rice
Kitchen • Block A • Top Shelf


---

# Current Stock Card

## Widget

text
current_stock_card.dart


---

# Card Contents

## Current Stock

Example:

text
400 g


---

## Unit Label

Example:

text
Unit: kg


---

## Stock Progress Bar

Animated green progress bar.

---

## Bottom Information

Left:

text
Minimum Alert: 200 g


Right:

text
Status: Safe


---

# Purchase Details Section

## Widget

text
purchase_details_section.dart


---

# Fields

## Quantity Bought

Placeholder:

text
Enter quantity bought


---

## Unit Dropdown

Units:
- g
- kg
- ml
- litre
- packet

---

## Price Input

Placeholder:

text
Enter amount


Prefix icon:
₹

---

## Store Name

Optional field.

Placeholder:

text
e.g. DMart, Reliance Fresh


---

# Receipt Upload Section

## Widget

text
receipt_upload_card.dart


---

# Features

Create dashed upload card.

---

## Upload Label

text
Add Photo


---

## Subtitle

text
Upload bill or receipt for reference


---

# Upload Support

- Camera
- Gallery

---

# Updated Stock Preview

## Widget

text
updated_stock_preview.dart


---

# Purpose

Preview total stock after refill.

---

# Card Contents

## Updated Stock

Example:

text
1.4 kg


---

## Added Quantity Badge

Example:

text
+1.0 kg


---

## Message

text
This will be your new total stock.


---

# Purchase Date & Time

## Widget

text
purchase_datetime_section.dart


---

# Features

## Purchase Date Picker

Example:

text
May 13, 2025


---

## Purchase Time Picker

Example:

text
09:41 AM


---

# Purchase Notes Section

## Widget

text
purchase_note_section.dart


---

# Features

## Multiline Notes Field

Placeholder:

text
Add any notes about this purchase...


---

## Character Counter

Example:

text
0/120


---

# Save Button

## Widget

text
save_purchase_button.dart


---

# Button Design

Large rounded green button.

---

## Label

text
Save Purchase


---

## Icon

Check Circle icon

---

# Bottom Navigation

Use existing floating bottom navbar.

---

# Navbar Items

- Home
- Kitchen
- Add
- Usage
- Cart

---

# Selected State

Add button active:
- green glow
- elevated floating effect

---

# UI Requirements

- Use Flutter Material 3
- Responsive mobile layout
- Rounded premium cards
- Soft shadows
- Smooth transitions
- Modern inventory UI
- Minimal clean design

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
- Stack

---

# Suggested Flutter Packages

- google_fonts
- iconsax
- image_picker
- intl
- flutter_animate

---

# Suggested Animation Techniques

Use:
- FadeTransition
- AnimatedSwitcher
- ScaleTransition
- Smooth progress animation
- Button press animation

---

# State Management Logic

When user enters purchased quantity:
- auto calculate updated stock
- update stock preview card
- update progress bar

Example:

text
Current: 400 g
Purchased: 1 kg
Updated: 1.4 kg


---

# Validation Rules

- quantity required
- unit required
- prevent empty save
- optional receipt upload

---

# Responsive Layout Rules

- Avoid fixed width inside Row
- Use Expanded/Flexible
- Use SafeArea
- Use SingleChildScrollView
- Prevent RenderFlex overflow
- Support small screen devices

---

# UX Goals

User should feel:
- easy inventory refill
- fast purchase update
- organized shopping workflow
- smart stock management

The screen should feel:
- premium
- responsive
- lightweight
- modern
- clean
- intuitive