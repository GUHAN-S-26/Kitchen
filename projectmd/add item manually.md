# Smart Kitchen – Add Item Manually Screen UI

## Reference Design
Use the uploaded Add Item Manually reference image for:
- layout structure
- form card spacing
- input field design
- shopping checklist banner
- upload photo section
- save button design
- clean mobile UI inspiration

Create a modern Flutter Add Item Manually screen UI for the Smart Kitchen app.

---

# Screen Name

Add Item Manually Screen

---

# Navigation Flow

Shopping Checklist Screen
↓
Click:
Add Item Manually
↓
Open:
Add Item Manually Screen

---

# App Theme

## Primary Color
Green

## Secondary Colors
- Orange
- Blue
- Purple

## Background
Soft White (#F8F8F8)

---

# Header Section

## Left Side
Back arrow icon

---

## Main Title
Add Item Manually

---

## Subtitle
Add items you want to buy later

---

## Right Side Icons

### Help Icon
Question mark icon

### Profile Avatar
Rounded profile image

---

# Shopping Checklist Banner

Create rounded green information banner.

---

## Left Side
Checklist / shopping icon

---

## Main Title
Shopping Checklist

---

## Subtitle
This item will be added to your shopping list.

---

## Right Side
Checklist illustration icon

---

# Form Container

Create large rounded white form card with soft shadow.

---

# Item Name Section

## Label
Item Name *

---

## Input Placeholder
Enter item name (e.g. Coffee, Detergent)

---

## Right Side Icon
Bag / item icon

---

# Quantity Section

## Label
Quantity You Want to Buy *

Create 2-column responsive layout.

---

## Field 1

### Placeholder
Enter quantity

---

## Field 2

### Placeholder
Select unit

Dropdown values:
- g
- kg
- ml
- litre
- packet
- piece

---

# Category & Priority Section

Create 2-column responsive layout.

---

## Field 1

### Label
Category (Optional)

### Placeholder
Select category

Left side category icon.

Dropdown values:
- Grocery
- Snacks
- Cleaning
- Kitchen
- Household
- Other

---

## Field 2

### Label
Priority

Default:
Medium

Left side flag icon.

Dropdown values:
- Low
- Medium
- High

Use color indicators:
- Green
- Orange
- Red

---

# Notes Section

## Label
Notes (Optional)

---

## Placeholder
Add any notes...

Character counter:
0 / 100

---

# Reminder Section

## Label
Remind Me (Optional)

---

## Date Picker Field

### Placeholder
Select date

Left side calendar icon.

---

## Right Side Badge
No reminder

Rounded green badge style.

---

# Store / Place Section

## Label
Store / Place (Optional)

---

## Placeholder
e.g. D-Mart, More, Local Market

Left side location icon.

---

# Add Photo Section

Create dashed rounded upload container.

---

## Left Side Upload Card

### Icon
Camera icon

### Label
Add Photo

Use soft green background.

---

## Right Side Text

### Title
Add a photo (Optional)

### Subtitle
Helps you remember the item easily

---

# Save Button

Create large rounded green button.

---

## Button Label
Add to Checklist

---

## Icon
Check icon

---

# UI Requirements

- Use Flutter Material 3
- Responsive mobile layout
- Rounded cards
- Soft shadows
- Clean spacing
- Reusable widgets
- Smooth scrolling
- Modern checklist app feel

---

# Suggested Flutter Widgets

- SingleChildScrollView
- TextFormField
- DropdownButtonFormField
- Card
- DatePicker
- AnimatedContainer
- ElevatedButton

---

# Suggested Flutter Packages

- google_fonts
- iconsax
- image_picker
- flutter_svg

---

# Responsive Layout Rules

- Avoid fixed width inside Row
- Use Expanded/Flexible
- Use ellipsis for long text
- Use SingleChildScrollView
- Use SafeArea
- Make layout responsive for small devices

---

# UX Goals

User should quickly:
- add custom shopping items
- set reminder priority
- save shopping notes
- remember future purchases
- organize manual checklist items easily

The screen should feel:
- simple
- clean
- organized
- modern
- smooth
- beginner friendly