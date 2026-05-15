# Smart Kitchen – Kitchen Tool Screen UI

## Feature Name

Kitchen Tool Screen

---

# Reference Design

Use the uploaded Kitchen Tool Screen reference image for:
- premium kitchen inventory layout
- green active segmented toggle
- rounded search bar
- category filter chips
- modern kitchen tool cards
- floating add button
- soft shadows and pastel backgrounds

Create a modern Kitchen Tool management screen for the Smart Kitchen app.

---

# Navigation Flow

text
Bottom Navigation
↓
Tap Kitchen
↓
Kitchen Screen Opens
↓
Toggle → Kitchen Tools
↓
Kitchen Tool Inventory Visible
↓
Tap Tool Card → Tool Detail Screen


---

# Screen Purpose

This screen allows users to:
- manage kitchen tools
- organize utensils and cookware
- track kitchen equipment status
- search kitchen tools
- filter categories
- monitor tool availability

---

# Screen Layout

Use:
- SafeArea
- SingleChildScrollView
- responsive spacing
- reusable widgets
- modern card layout

Background:
text
#F8F8F8


---

# Folder Structure

text
lib/
 └── screens/
      └── kitchen/
           ├── kitchen_screen.dart
           └── widgets/
                ├── kitchen_header.dart
                ├── kitchen_toggle.dart
                ├── kitchen_search_bar.dart
                ├── kitchen_tool_filter_chips.dart
                ├── kitchen_tool_section.dart
                ├── kitchen_tool_card.dart
                ├── kitchen_tool_status_badge.dart
                └── floating_add_button.dart


---

# Main Screen

## File

text
kitchen_screen.dart


Use:
- same screen for Grocery + Kitchen Tools
- toggle-based content switching

---

# Header Section

## Widget

text
kitchen_header.dart


---

# Header Content

## Title

text
Kitchen


---

## Subtitle

text
Manage your grocery and kitchen tools.


---

## Right Side

### Notification Button

- white circular container
- red badge count

---

### Profile Avatar

Rounded profile image.

---

# Kitchen Toggle

## Widget

text
kitchen_toggle.dart


---

# Toggle Layout

text
[Grocery]   [Kitchen Tools]


---

# Selected State

Kitchen Tools selected:
- green background
- white text
- active glow/shadow

---

# Unselected State

- white background
- dark text

---

# Toggle Animation

Use:
- AnimatedContainer
- smooth slide animation
- fade transition

---

# Search Section

## Widget

text
kitchen_search_bar.dart


---

# Search Placeholder

text
Search kitchen tools...


---

# Right Side Action

Filter/settings icon button.

---

# Filter Chips

## Widget

text
kitchen_tool_filter_chips.dart


---

# Chip Categories

text
All
Cooking
Storage
Cleaning
Others


---

# Active Chip

Green border + green text.

---

# Inactive Chip

Gray border + dark text.

---

# Kitchen Tool Section

## Widget

text
kitchen_tool_section.dart


---

# Section Header

## Left

text
Kitchen Tools


---

## Right

Sort dropdown.

Example:

text
Sort by: Name


---

# Kitchen Tool Card

## Widget

text
kitchen_tool_card.dart


---

# Card Design

Use:
- white rounded container
- soft shadow
- responsive layout
- horizontal alignment

Border Radius:
text
24


---

# Card Layout Structure

text
[Image]  [Tool Info]   [Quantity]


---

# Left Side

Tool image inside pastel container.

Use:
- soft colored background
- rounded corners

---

# Center Content

## Tool Name

Bold modern typography.

Examples:
- Chef Knife
- Frying Pan
- Food Container Set
- Kitchen Scissors
- Cheese Grater

---

## Tool Location

Example:

text
Kitchen • Drawer A


---

## Status Badge

Use reusable badge widget.

---

# Status Types

## Available

Green badge

---

## In Use

Blue badge

---

## Needs Sharpening

Orange badge

---

## Missing

Red badge

---

# Right Side

## Quantity

Examples:

text
1 Piece
2 Pieces
5 Pieces


---

## Arrow Icon

Navigate to tool details.

---

## More Options

Vertical 3-dot icon.

Actions:
- Edit
- Move
- Delete
- Mark Missing

---

# Example Tool Cards

---

# Tool 1

## Name

text
Chef Knife


## Location

text
Kitchen • Drawer A


## Status

text
Available


## Quantity

text
1 Piece


---

# Tool 2

## Name

text
Frying Pan


## Location

text
Kitchen • Shelf B


## Status

text
In Use


## Quantity

text
2 Pieces


---

# Tool 3

## Name

text
Food Container Set


## Status

text
Available


---

# Tool 4

## Name

text
Kitchen Scissors


## Status

text
Needs Sharpening


---

# Tool 5

## Name

text
Cheese Grater


## Status

text
Missing


---

# Status Badge Widget

## Widget

text
kitchen_tool_status_badge.dart


---

# Badge Design

Use:
- rounded pill shape
- light pastel background
- medium font weight
- compact padding

---

# Floating Add Button

## Widget

text
floating_add_button.dart


---

# FAB Design

Use:
- glowing green circular FAB
- white plus icon
- shadow glow effect

Position:
Bottom-right floating.

---

# FAB Action

text
Tap FAB
↓
Open Wave Add Menu
↓
Add Kitchen Tool
↓
Open Add Item Screen
↓
Toggle Automatically Switches to Kitchen Tool


---

# Bottom Navigation

Keep existing floating navbar.

---

# Navbar Items

### Home

### Kitchen
Selected state:
green icon + text

### Add

### Usage

### Cart

---

# Animation Style

Use:
- smooth list animation
- fade-in cards
- staggered appearance
- animated toggle transition

Animation feel:
- fluid
- premium
- responsive
- modern

---

# Suggested Flutter Widgets

- AnimatedContainer
- ListView.builder
- InkWell
- Hero
- Stack
- Positioned
- ChoiceChip
- Expanded
- Flexible

---

# Suggested Flutter Packages

- flutter_animate
- google_fonts
- iconsax

---

# Responsive Layout Rules

- Avoid fixed widths inside Row
- Use Expanded/Flexible
- Prevent RenderFlex overflow
- Use responsive spacing
- Support small devices

---

# State Management

Manage:
- toggle state
- search state
- filter category
- sorting state
- tool inventory state

Use:
- Provider
- Riverpod
- Bloc

---

# UX Goals

User should feel:
- organized
- fast tool access
- premium interaction
- easy kitchen management

The screen should feel:
- modern
- minimal
- smooth
- clean
- responsive
- production-ready