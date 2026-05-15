# Smart Kitchen – Kitchen Tool Detail Screen UI

## Feature Name

Kitchen Tool Detail Screen

---

# Reference Design

Use the uploaded Kitchen Tool Detail Screen reference image for:
- premium white card layout
- modern kitchen tool detail UI
- condition status selector
- maintenance reminder section
- usage history timeline
- rounded action buttons
- soft shadows and pastel backgrounds

Create a modern Kitchen Tool Detail screen for the Smart Kitchen app.

---

# Navigation Flow

text
Kitchen Screen
↓
Toggle → Kitchen Tools
↓
Tap Kitchen Tool Card
↓
Kitchen Tool Detail Screen Opens


---

# Screen Purpose

This screen allows users to:
- view kitchen tool details
- update quantity
- track tool condition
- manage maintenance reminders
- monitor usage history
- mark missing tools
- remove damaged tools

---

# Screen Layout

Use:
- SafeArea
- SingleChildScrollView
- responsive spacing
- reusable widgets
- modern card design

Background:
text
#F8F8F8


---

# Folder Structure

text
lib/
 └── screens/
      └── kitchen_tool_detail/
           ├── kitchen_tool_detail_screen.dart
           └── widgets/
                ├── tool_detail_header.dart
                ├── tool_info_card.dart
                ├── tool_stats_grid.dart
                ├── tool_condition_section.dart
                ├── update_tool_quantity_section.dart
                ├── storage_location_card.dart
                ├── maintenance_reminder_card.dart
                ├── tool_usage_history_section.dart
                └── remove_tool_button.dart


---

# Main Screen

## File

text
kitchen_tool_detail_screen.dart


Use:
- modular widgets
- responsive layout
- reusable sections

---

# Header Section

## Widget

text
tool_detail_header.dart


---

# Header Layout

## Left Side

### Back Button

Rounded square icon button.

---

## Center

### Title

text
Kitchen Tool Detail


### Subtitle

text
View and manage your kitchen tool


---

## Right Side

### Edit Button

Pencil icon button.

---

### More Options Button

3-dot menu.

Options:
- Edit Tool
- Move Tool
- Mark Missing
- Delete Tool

---

# Tool Info Card

## Widget

text
tool_info_card.dart


---

# Card Layout

text
[Tool Image] [Tool Details] [Quantity Box]


---

# Left Side

Tool image inside pastel green rounded container.

---

# Center Details

## Tool Name

Example:

text
Chef Knife


---

## Status Badge

Example:

text
Available


Green pill badge.

---

## Tool Location

Example:

text
Kitchen • Drawer A


---

## Tool Category

Example:

text
Cutlery


---

# Right Side

## Quantity Card

Display:
text
Quantity
1 Piece


Use:
- soft gray background
- rounded corners

---

# Statistics Section

## Widget

text
tool_stats_grid.dart


---

# Stats Cards

Create 4 responsive cards.

---

## Card 1

### Title

text
Total Pieces


### Value

text
1 Piece


---

## Card 2

### Title

text
Available


### Value

text
1 Piece


---

## Card 3

### Title

text
In Use


### Value

text
0 Piece


---

## Card 4

### Title

text
Last Used


### Value

text
Today
08:30 AM


---

# Tool Condition Section

## Widget

text
tool_condition_section.dart


---

# Section Title

text
Condition


---

# Condition Options

Create selectable cards.

---

## Condition 1

text
Good


Green selected state.

---

## Condition 2

text
Needs Cleaning


---

## Condition 3

text
Needs Sharpening


---

## Condition 4

text
Damaged


---

## Condition 5

text
Missing


---

# Selected Condition Style

Use:
- green border
- light green background
- check icon

---

# Update Quantity Section

## Widget

text
update_tool_quantity_section.dart


---

# Section Title

text
Update Quantity


---

# Layout

3-column responsive layout.

---

# Column 1

## Adjust Quantity

Buttons:
text
-1
+1
+2


Use:
- outlined buttons
- green/red borders

---

# Column 2

## Add New Piece

Green action button.

Button text:
text
Add Tool


---

# Column 3

## Mark as Missing

Red action button.

Button text:
text
Mark Missing


---

# Storage Location Card

## Widget

text
storage_location_card.dart


---

# Card Content

## Title

text
Storage Location


---

## Location

text
Kitchen
Drawer A


---

## Shelf Position

text
Top Left Section


---

# Maintenance Reminder Card

## Widget

text
maintenance_reminder_card.dart


---

# Card Content

## Title

text
Maintenance Reminder


---

## Reminder 1

text
Clean Every
1 Week


---

## Reminder 2

text
Sharpen Every
1 Month


---

# Usage History Section

## Widget

text
tool_usage_history_section.dart


---

# Section Header

## Left

text
Usage History


---

## Right

text
View All


Green text button.

---

# Usage Timeline Items

Create modern list cards.

---

# History Item 1

## Status

text
Used


## Description

text
Used for chopping vegetables


## Time

text
Today, 08:30 AM


---

# History Item 2

## Status

text
Returned


## Description

text
Returned to Drawer A


---

# History Item 3

## Status

text
Cleaned


## Description

text
Cleaned and wiped


---

# History Item 4

## Status

text
Moved


## Description

text
Moved from Shelf to Drawer A


---

# Remove Tool Button

## Widget

text
remove_tool_button.dart


---

# Button Design

Large outlined red button.

---

# Button Text

text
Remove Tool


---

# Subtitle

text
Remove this tool from your kitchen


---

# Button Style

Use:
- white background
- red border
- red icon
- rounded corners

---

# Animation Style

Use:
- fade animation
- staggered card appearance
- smooth transitions
- soft scaling effects

Animation feel:
- premium
- fluid
- modern
- responsive

---

# Suggested Flutter Widgets

- AnimatedContainer
- ListView.builder
- InkWell
- Expanded
- Flexible
- Wrap
- ChoiceChip
- Hero
- Stack

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
- Use Wrap for condition cards
- Use responsive spacing

---

# State Management

Manage:
- condition selection
- quantity updates
- maintenance reminders
- tool history
- tool availability

Use:
- Provider
- Riverpod
- Bloc

---

# UX Goals

User should feel:
- organized
- in control
- visually comfortable
- fast interaction

The screen should feel:
- premium
- modern
- minimal
- clean
- production-ready
- responsive