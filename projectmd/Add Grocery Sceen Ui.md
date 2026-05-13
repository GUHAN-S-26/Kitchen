# Smart Kitchen – Add Grocery Screen UI

## Reference Design
Use the uploaded Add Item reference image for:
- layout structure
- form section spacing
- segmented toggle design
- input field style
- category cards
- photo upload section
- save button
- bottom navigation style

Create a modern Flutter Add Grocery screen UI for the Smart Kitchen app.

---

# Screen Name

Add Grocery Screen

---

# App Theme

## Primary Color
Green

## Secondary Colors
- Orange
- Purple
- Yellow

## Background
Soft White (#F8F8F8)

---

# Header Section

## Left Side
Back arrow icon

---

## Main Title
Add Item

---

## Subtitle
Add new grocery or kitchen tool

---

## Right Side Icons

### Notification Icon
Bell icon with red badge count

### Profile Avatar
Rounded profile image

---

# Toggle Section

Create segmented rounded toggle buttons.

---

## Toggle Options

### Grocery
Selected state:
- green highlight
- white background
- green icon/text

---

### Kitchen Tool
Unselected state:
- light gray background

---

# Form Container

Create large rounded white form card with soft shadow.

---

# Item Name Section

## Label
Item Name

---

## Input Placeholder
Enter item name (e.g. Sugar)

---

## Right Side Icon
Container / item icon

---

# Quantity Section

Create 2-column layout.

---

## Input 1

### Label
Quantity

### Placeholder
Enter quantity

---

## Input 2

### Placeholder
Select Unit

Dropdown units:
- g
- kg
- ml
- litre
- packet

---

# Block Selection Section

Create 2-column layout.

---

## Field 1

### Label
Select Block

### Default Value
Kitchen • Block A

Dropdown selection.

---

## Field 2

### Label
Location (Optional)

### Placeholder
e.g. Top Shelf

Right side location icon.

---

# Category Section

## Label
Category (Optional)

Create horizontal category cards.

---

# Categories

### Grains
Wheat icon

### Pulses
Green pulse icon

### Spices
Chilli icon

### Oil & Ghee
Oil bottle icon

### More
Grid icon

---

# Minimum Stock Alert Section

## Label
Minimum Stock Alert

### Subtitle
Get notified when stock is low

---

# Input Layout

## Quantity Input
Enter quantity

## Unit Dropdown
Select unit

---

# Expiry Date Section

## Label
Expiry Date (Optional)

---

## Placeholder
Select expiry date

Left side calendar icon.

Right side arrow icon.

---

# Notes Section

## Label
Notes (Optional)

---

## Placeholder
Add any notes...

Character limit:
0 / 100

---

# Add Photo Section

## Label
Add Photo (Optional)

### Subtitle
Add a photo for quick identification

---

# Upload Card

Create dashed rounded upload container.

---

## Icon
Camera icon

---

## Label
Add Photo

Use soft green upload background.

---

# Save Button

Create large rounded green button.

---

## Button Label
Save Item

---

## Icon
Save icon

---

# Bottom Navigation Bar

Modern floating navbar.

---

# Navbar Items

### Home

### Kitchen

### Add
Selected state:
- large floating green button

### Usage

### Cart

---

# UI Requirements

- Use Flutter Material 3
- Responsive mobile layout
- Rounded cards
- Soft shadows
- Minimal UI
- Clean spacing
- Smooth scrolling
- Reusable widgets
- Modern grocery app style

---

# Suggested Flutter Widgets

- SingleChildScrollView
- TextFormField
- DropdownButtonFormField
- GridView
- Card
- AnimatedContainer
- BottomNavigationBar
- FloatingActionButton

---

# Suggested Flutter Packages

- google_fonts
- iconsax
- image_picker
- flutter_svg

---

# UX Goals

User should quickly:
- add grocery items
- assign storage block
- set stock alerts
- upload item image
- organize kitchen inventory easily

The screen should feel:
- simple
- clean
- organized
- modern
- fast
- beginner friendly