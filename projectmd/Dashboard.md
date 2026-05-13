# Smart Kitchen – Home Dashboard UI

## Reference Design
Use the uploaded reference image for layout, spacing, card design, colors, typography, navbar structure, and overall UI inspiration. ( D:\FlutterProjects\Smart_Kitchen\projectmd\Home Dashboard.jpeg )

Design Style:
- Modern
- Minimal
- Soft shadows
- Rounded corners
- Mobile-first
- Clean white background
- Green primary color
- Soft pastel cards

---

# Screen Name

Home Dashboard

---

# App Theme

## Primary Color
Green

## Secondary Colors
- Blue
- Orange
- Purple
- Red

## Background
Soft White (#F8F8F8)

---

# Header Section

## Left Side

### Greeting Text
Good Morning 👋

### Main Title
Welcome to Smart Kitchen

### Subtitle
Organize your kitchen, track usage and never run out.

---

## Right Side

### Notification Icon
Bell icon with small red badge count.

### Profile Avatar
Rounded profile image.

---

# Search Bar Section

Create a rounded search bar.

## Placeholder
Search grocery or kitchen tools...

## Right Side Icon
QR Scanner / Scan icon.

---

# Dashboard Statistics Cards

Create 4 rounded cards in horizontal layout.

Each card should have:
- soft pastel background
- rounded corners
- icon
- title
- count
- subtitle

---

## Card 1

### Title
Grocery Items

### Count
24

### Subtitle
Total Items

### Icon
Basket / Grocery icon

### Background
Soft Green

---

## Card 2

### Title
Kitchen Tools

### Count
58

### Subtitle
Total Items

### Icon
Kitchen tool icon

### Background
Soft Blue

---

## Card 3

### Title
Low Stock

### Count
5

### Subtitle
Items

### Icon
Warning icon

### Background
Soft Orange

---

## Card 4

### Title
In Cart

### Count
3

### Subtitle
Items

### Icon
Cart icon

### Background
Soft Purple

---

# Quick Actions Section

## Section Title
Quick Actions

Create 4 rounded action buttons.

---

## Action 1
+ Grocery

## Action 2
+ Kitchen Tool

## Action 3
+ Usage

## Action 4
+ Purchase

---

# Low Stock Section

## Section Header
Low Stock

## Right Side Button
View All

---

# Low Stock List Card

Each item card contains:

- product image
- item name
- block location
- remaining quantity
- low stock badge
- arrow icon

---

## Item 1

### Name
Sugar

### Location
Kitchen • Block A

### Quantity
40 g

### Status
Low Stock

---

## Item 2

### Name
Salt

### Location
Kitchen • Block D

### Quantity
20 g

### Status
Low Stock

---

## Item 3

### Name
Oil

### Location
Kitchen • Block C

### Quantity
100 ml

### Status
Low Stock

---

# Recent Usage Section

## Section Header
Recent Usage

## Right Side Button
View All

---

# Recent Usage Card

Each card contains:
- item image
- item name
- usage amount
- usage time
- arrow icon

---

## Item 1

### Name
Sugar

### Usage
Used 10 g

### Time
Today, 08:30 AM

---

## Item 2

### Name
Rice

### Usage
Used 1 kg

### Time
Yesterday, 07:15 PM

---

## Item 3

### Name
Oil

### Usage
Used 50 ml

### Time
Yesterday, 06:40 PM

---

# Shopping Reminder Card

Create a green rounded reminder card.

## Left Side
Shopping bag illustration.

## Main Text
3 items in your cart

## Subtitle
Don’t forget to review your cart!

## Right Side Button
Open Cart

---

# Bottom Navigation Bar

Create floating modern bottom navbar like the reference image.

## Navbar Items

### Home
Selected with green highlight.

### Kitchen

### Add
Large floating circular add button in center.

### Usage

### Cart

---

# Add Button Behavior

When user taps center add button:

Open bottom sheet menu with:

- Add Grocery
- Add Kitchen Tool
- Add Usage
- Add Purchase

---

# UI Requirements

- Use Flutter Material 3
- Use clean spacing
- Use rounded cards
- Use subtle shadows
- Use responsive layout
- Use reusable widgets
- Use smooth scrolling
- Use soft icon colors
- Maintain exact mobile dashboard feel from reference image

---

# Recommended Flutter Packages

- google_fonts
- iconsax
- flutter_svg

---

# Responsive Requirements

- Mobile-first design
- Should work on Android and iPhone sizes
- SafeArea support required

---

# Overall Goal

The dashboard should instantly help users know:

- what grocery items they have
- what is low stock
- what was recently used
- what needs to be purchased

The UI should feel modern, premium, organized, and simple.