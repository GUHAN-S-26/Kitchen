# Smart Kitchen – Grocery Item Detail Screen UI

## Reference Design
Use the uploaded Grocery Item Detail reference image for:
- layout structure
- spacing
- quantity update section
- usage history cards
- information cards
- progress section
- clean mobile UI inspiration

Create a modern Flutter Grocery Item Detail screen UI for the Smart Kitchen app.

---

# Screen Name

Grocery Item Detail Screen

---

# App Theme

## Primary Color
Green

## Secondary Colors
- Orange
- Red
- Purple

## Background
Soft White (#F8F8F8)

---

# Header Section

## Left Side
Back arrow icon

## Screen Title
Sugar

## Right Side Icons
- Edit icon
- More options icon

---

# Product Information Card

Create large rounded white card.

## Left Side
Product image

Example:
Sugar jar image

---

## Center Content

### Product Name
Sugar

### Status Badge
In Stock

Green badge with rounded pill style.

---

### Location
Kitchen • Block A

### Description
White granulated sugar

---

## Right Side Quantity Card

Create light green quantity card.

### Main Quantity
1 kg

### Subtitle
Left

### Progress Bar
Green progress line

### Max Quantity
/ 2 kg

---

# Statistics Cards Section

Create 4 small rounded cards.

---

## Card 1

### Title
Total Quantity

### Value
2 kg

### Icon
Weight scale icon

---

## Card 2

### Title
Used

### Value
1 kg

### Icon
Usage icon

---

## Card 3

### Title
To Refill

### Value
1 kg

### Icon
Bag icon

---

## Card 4

### Title
Added On

### Value
10 May 2024

### Icon
Calendar icon

---

# Update Quantity Section

## Section Title
Update Quantity

---

# Quantity Controller

Create centered quantity update controller.

---

## Left Button
Minus button

---

## Center Quantity
10

### Unit Dropdown
gram

---

## Right Button
Plus button

---

# Quick Quantity Buttons

Create rounded quick action buttons.

Buttons:
- + 10 g
- + 50 g
- + 100 g
- + 250 g

Use soft green background.

---

# Action Buttons

Create 2 large rounded buttons.

---

## Used Button

### Icon
Down arrow

### Label
Used

### Style
Light green background

---

## Refill / Add Button

### Icon
Up arrow

### Label
Refill / Add

### Style
Light orange background

---

# Usage History Section

## Section Header
Usage History

## Right Side Button
View All

---

# Usage History List Cards

Each history item contains:
- status icon
- action text
- date & time
- remaining stock
- arrow icon

---

# Example Items

---

## Item 1

### Action
Used 10 g

### Time
Today, 08:30 AM

### Remaining
1 kg Left

### Icon Color
Orange

---

## Item 2

### Action
Used 50 g

### Time
Yesterday, 06:40 PM

### Remaining
1.01 kg Left

### Icon Color
Orange

---

## Item 3

### Action
Added 500 g

### Time
10 May 2024, 05:20 PM

### Remaining
1.06 kg Left

### Icon Color
Green

---

## Item 4

### Action
Used 100 g

### Time
10 May 2024, 10:10 AM

### Remaining
560 g Left

### Icon Color
Orange

---

# About Storage Section

## Section Title
About Storage

---

# Storage Card

Create rounded green information card.

## Left Side
Storage icon

---

## Main Text
Kitchen • Block A

---

## Subtitle
Top Shelf • Left Side

---

## Right Side Button
Change Location

---

# Remove Item Button

Create large rounded red button.

## Label
Remove Item

## Icon
Delete icon

---

# UI Requirements

- Use Flutter Material 3
- Mobile responsive design
- Rounded cards
- Soft shadows
- Clean spacing
- Reusable widgets
- Smooth animations
- Minimal modern UI
- Premium grocery app feel

---

# Suggested Flutter Widgets

- SingleChildScrollView
- Column
- Row
- Card
- AnimatedContainer
- ListView.builder
- LinearProgressIndicator
- FloatingActionButton

---

# Suggested Flutter Packages

- google_fonts
- iconsax
- flutter_svg

---

# UX Goals

User should quickly:
- check stock quantity
- update usage
- refill grocery
- view usage history
- identify storage location
- manage grocery easily

The screen should feel:
- clean
- organized
- modern
- smooth
- informative
- easy to use