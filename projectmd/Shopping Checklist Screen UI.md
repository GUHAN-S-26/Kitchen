# Smart Kitchen – Shopping Checklist Screen UI

## Reference Design
Use the uploaded Shopping Checklist reference image for:
- layout structure
- statistics cards
- shopping item list
- purchased section
- checklist card design
- spacing and modern UI inspiration

Create a modern Flutter Shopping Checklist screen UI for the Smart Kitchen app.

---

# Screen Name

Shopping Checklist Screen

---

# App Theme

## Primary Color
Green

## Secondary Colors
- Orange
- Purple
- Red
- Blue

## Background
Soft White (#F8F8F8)

---

# Header Section

## Main Title
Shopping Checklist

---

## Subtitle
Items you need to buy for your kitchen.

---

## Right Side Icons

### Notification Icon
Bell icon with red badge count

### Profile Avatar
Rounded profile image

---

# Statistics Cards Section

Create 3 rounded analytics cards.

Each card should contain:
- icon
- main count
- subtitle

Use soft pastel backgrounds.

---

# Card 1

## Title
Total Items

## Value
7

## Subtitle
On your list

## Icon
Shopping cart icon

## Background
Soft Pink

---

# Card 2

## Title
Low Stock

## Value
5

## Subtitle
Needs attention

## Icon
Warning icon

## Background
Soft Yellow

---

# Card 3

## Title
Purchased

## Value
2

## Subtitle
Completed

## Icon
Check icon

## Background
Soft Green

---

# Information Banner

Create rounded light blue information card.

---

## Left Side
Information icon

---

## Main Text
These items are added based on low stock and reminders.

---

## Learn More Button
Text button

---

## Right Side Button
Settings button

---

# Items To Buy Section

## Section Header
Items to Buy (5)

---

## Right Side Dropdown
Sort by: Priority

---

# Shopping Item Card Design

Each card should contain:
- checkbox
- product image
- item name
- block location
- stock badge
- remaining stock
- buy quantity
- edit icon
- mark purchased button

Use rounded white cards with soft shadows.

---

# Example Items

---

## Item 1

### Name
Sugar

### Location
Kitchen • Block A

### Status
Low Stock

### Remaining
1 kg left

### Buy Quantity
2 kg

---

## Item 2

### Name
Oil

### Location
Kitchen • Block C

### Status
Low Stock

### Remaining
100 ml left

### Buy Quantity
1 L

---

## Item 3

### Name
Salt

### Location
Kitchen • Block D

### Status
Low Stock

### Remaining
20 g left

### Buy Quantity
500 g

---

## Item 4

### Name
Rice

### Location
Kitchen • Block B

### Status
Running Low

### Remaining
1 kg left

### Buy Quantity
2 kg

---

## Item 5

### Name
Toor Dal

### Location
Kitchen • Block B

### Status
Running Low

### Remaining
250 g left

### Buy Quantity
1 kg

---

# Mark Purchased Button

Create outlined green rounded button.

---

## Label
Mark Purchased

---

## Icon
Cart check icon

---

# Purchased Section

## Section Header
Purchased (2)

Collapsible expandable section.

---

# Purchased Item Card

Each card contains:
- green completed icon
- item image
- item name
- block location
- purchased quantity
- purchased date

Use light green background.

---

# Example Purchased Items

---

## Item 1

### Name
Wheat Flour

### Location
Kitchen • Block A

### Purchased Quantity
2 kg

### Purchased Date
Purchased on 10 May 2024

---

## Item 2

### Name
Masoor Dal

### Location
Kitchen • Block B

### Purchased Quantity
1 kg

### Purchased Date
Purchased on 09 May 2024

---

# Add Item Manually Card

Create dashed rounded add card.

---

## Left Side
Plus icon

---

## Main Text
Add Item Manually

---

## Subtitle
Add items you want to buy later

---

## Right Side
Arrow icon

---

# Bottom Navigation Bar

Modern floating navbar.

---

# Navbar Items

### Home

### Kitchen

### Add

### Usage

### Cart
Selected state:
- green highlight
- badge count

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
- Modern grocery checklist style

---

# Suggested Flutter Widgets

- CustomScrollView
- ExpansionTile
- Checkbox
- ListView.builder
- Card
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
- identify low stock items
- manage shopping reminders
- mark purchased items
- track checklist progress
- organize shopping easily

The screen should feel:
- clean
- smart
- organized
- modern
- smooth
- productive