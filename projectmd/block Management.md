# Smart Kitchen – Block Management Screen UI

## Reference Design
Use the uploaded Block Management reference image for:
- layout structure
- statistics cards
- block list design
- search/filter layout
- add block banner
- bottom navigation style
- clean modern mobile UI inspiration

Create a modern Flutter Block Management screen UI for the Smart Kitchen app.

---

# Screen Name

Block Management Screen

---

# Navigation Flow

Kitchen Screen
↓
Click:
Manage Blocks
↓
Open:
Block Management Screen

---

# App Theme

## Primary Color
Green

## Secondary Colors
- Blue
- Orange
- Purple
- Pink
- Yellow

## Background
Soft White (#F8F8F8)

---

# Header Section

## Left Side
Back arrow icon

---

## Main Title
Block Management

---

## Subtitle
Manage your kitchen blocks, drawers and shelves.

---

## Right Side Icons

### Notification Icon
Bell icon with red badge count

### Profile Avatar
Rounded profile image

---

# Statistics Cards Section

Create 4 rounded analytics cards.

Each card should contain:
- icon
- value
- title
- subtitle

Use soft pastel backgrounds.

---

# Card 1

## Title
Total Blocks

## Value
8

## Subtitle
All locations

## Icon
Storage box icon

## Background
Soft Blue

---

# Card 2

## Title
Total Items

## Value
156

## Subtitle
Stored in blocks

## Icon
Cube icon

## Background
Soft Green

---

# Card 3

## Title
Low Stock Items

## Value
14

## Subtitle
Need attention

## Icon
Warning icon

## Background
Soft Orange

---

# Card 4

## Title
Recently Used

## Value
Block C

## Subtitle
2 min ago

## Icon
Clock icon

## Background
Soft Purple

---

# Search & Actions Section

Create responsive horizontal layout.

---

# Search Field

## Placeholder
Search blocks or locations...

Left side search icon.

---

# Filter Button

Outlined rounded button.

### Icon
Filter icon

### Label
Filter

---

# Sort Button

Outlined rounded button.

### Icon
Sort icon

### Label
Sort

---

# Add Block Banner

Create dashed rounded add banner card.

---

## Left Side
Green plus icon

---

## Main Title
Add New Block / Drawer / Shelf

---

## Subtitle
Create a new location to organize your items

---

## Right Side
Arrow icon

---

# All Blocks Section

## Section Header
All Blocks (8)

---

## Right Side Dropdown
View by: Name

---

# Block List Cards

Create rounded white cards with soft shadows.

Each card should contain:
- block image/icon
- block name
- block type badge
- description
- total items
- stock status
- active badge
- more menu
- open button

---

# Example Block Cards

---

## Block 1

### Name
Block A

### Type
Block

### Description
Main storage for groceries and dry items.

### Items
28 Items

### Status
3 Low Stock

### State
Active

---

## Block 2

### Name
Drawer B

### Type
Drawer

### Description
Cutlery, knives and small tools.

### Items
18 Items

### Status
2 Low Stock

### State
Active

---

## Block 3

### Name
Shelf C

### Type
Shelf

### Description
Cups, mugs, glasses and bowls.

### Items
22 Items

### Status
All Good

### State
Active

---

## Block 4

### Name
Block D

### Type
Block

### Description
Cooking essentials and masalas.

### Items
30 Items

### Status
4 Low Stock

### State
Active

---

## Block 5

### Name
Drawer A

### Type
Drawer

### Description
Serving spoons, ladles and tools.

### Items
15 Items

### Status
All Good

### State
Active

---

## Block 6

### Name
Shelf E

### Type
Shelf

### Description
Plates and serving dishes.

### Items
20 Items

### Status
2 Low Stock

### State
Active

---

# Open Button

Create outlined rounded button.

---

## Label
Open

---

## Right Side
Arrow icon

---

# More Menu Button

Three dots menu icon.

Popup options:
- Edit Block
- Rename
- Move Items
- Delete Block

---

# Tip Banner

Create rounded light blue tip card.

---

## Left Side
Bulb icon

---

## Main Text
Tip

---

## Subtitle
Organize your blocks to easily find and manage items.

---

## Right Side
Close icon

---

# Bottom Navigation Bar

Modern floating navbar.

---

# Navbar Items

### Home

### Kitchen
Selected state:
- green highlight

### Add

### Usage

### Cart

---

# Floating Add Button

Centered floating green add button.

When tapped:
- Add Grocery
- Add Kitchen Tool
- Add Usage
- Add Purchase

---

# UI Requirements

- Use Flutter Material 3
- Responsive mobile layout
- Rounded cards
- Soft shadows
- Clean spacing
- Smooth scrolling
- Reusable widgets
- Modern inventory management style

---

# Suggested Flutter Widgets

- CustomScrollView
- ListView.builder
- Card
- PopupMenuButton
- DropdownButtonFormField
- AnimatedContainer
- BottomNavigationBar
- FloatingActionButton

---

# Suggested Flutter Packages

- google_fonts
- iconsax
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
- manage kitchen storage locations
- identify low stock blocks
- organize drawers and shelves
- search storage locations
- access items inside blocks easily

The screen should feel:
- organized
- clean
- modern
- smart
- informative
- easy to manage