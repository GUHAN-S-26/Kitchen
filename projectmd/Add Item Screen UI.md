# Smart Kitchen – Add Item Screen UI

## Feature Name

Unified Add Item Screen


# Reference Design

Use the uploaded Add Item Kitchen Tool reference image for:
- segmented toggle layout
- form structure
- responsive card sections
- category cards
- clean spacing
- modern rounded UI
- bottom navigation layout
- minimal premium design

Create a modern Flutter Add Item screen with:
- Grocery Mode
- Kitchen Tool Mode

inside a single screen using animated toggle UI.



# Architecture Goal

Use:

```text
One Screen
✅ Toggle UI
✅ Separate reusable widgets
✅ Shared layout
✅ Dynamic form switching

Avoid:

separate full screens

duplicate form code

repeated layouts





Folder Structure

lib/
 └── screens/
      └── add_item/
           ├── add_item_screen.dart
           └── widgets/
                ├── add_item_header.dart
                ├── add_item_toggle.dart
                ├── grocery_form.dart
                ├── kitchen_tool_form.dart
                ├── shared/
                │    ├── custom_input.dart
                │    ├── custom_dropdown.dart
                │    ├── category_card.dart
                │    ├── photo_upload_card.dart
                │    └── section_title.dart




Rename Existing Structure

Rename:

add_grocery/

To:

add_item/




Rename Files

Old

add_item_form.dart

New

grocery_form.dart




Keep Same

add_item_header.dart
add_item_toggle.dart




Main Screen

File

add_item_screen.dart




Screen Behavior

Single screen contains:

[Grocery]   [Kitchen Tool]

When toggle changes:

form changes dynamically

animation transition

preserve layout consistency





Toggle Component

Widget

add_item_toggle.dart




Toggle States

Grocery Selected

green highlight

grocery icon

grocery form visible



---

Kitchen Tool Selected

green highlight

kitchen tool icon

kitchen tool form visible



---

Suggested Logic

bool isGrocery = true;


---

Toggle Animation

Use:

AnimatedContainer

AnimatedSwitcher

FadeTransition

ScaleTransition


Duration: 250ms


---

Shared Header

Widget

add_item_header.dart


---

Header Contents

Left Side

Back button


---

Title

Add Item


---

Subtitle

Add new grocery or kitchen tool


---

Right Side

Notification icon

Profile avatar



---

Grocery Form

Widget

grocery_form.dart


---

Grocery Form Fields

Item Name

Placeholder: Enter item name (e.g. Sugar)


---

Quantity

quantity input

unit dropdown


Units:

g

kg

litre

ml

packet



---

Select Block

Dropdown: Kitchen • Block A


---

Location

Placeholder: e.g. Top Shelf


---

Category Cards

Grains

Pulses

Spices

Oil & Ghee

More



---

Minimum Stock Alert

threshold quantity

unit selection



---

Expiry Date

Date picker field


---

Notes

Textarea with character count


---

Add Photo

Dashed upload card


---

Save Button

Label: Save Item


---

Kitchen Tool Form

Widget

kitchen_tool_form.dart


---

Kitchen Tool Fields

Tool Name

Placeholder: Enter tool name (e.g. Knife, Blender)


---

Quantity

quantity input

unit dropdown


Units:

piece

set

box

unit



---

Select Block

Dropdown: Kitchen • Block A


---

Location

Placeholder: e.g. Top Drawer


---

Category Cards

Cutlery

Cookware

Appliances

Utensils

More



---

Tool Material

Dropdown:

Stainless Steel

Plastic

Wood

Glass

Ceramic



---

Minimum Stock Alert (Optional)

Optional reminder quantity


---

Purchase Date

Date picker field


---

Notes

Textarea with character count


---

Add Photo

Dashed upload card


---

Save Button

Label: Save Item


---

Shared Reusable Widgets

custom_input.dart

Reusable input field widget.


---

custom_dropdown.dart

Reusable dropdown field widget.


---

category_card.dart

Animated category selector card.


---

photo_upload_card.dart

Reusable dashed upload container.


---

section_title.dart

Reusable section label widget.


---

Bottom Navigation

Use existing floating bottom navbar.


---

Navbar Items

Home

Kitchen

Add

Usage

Cart



---

Add Button State

Selected: Green glowing center button


---

UI Requirements

Use Flutter Material 3

Responsive layout

Rounded cards

Soft shadows

Minimal modern UI

Shared reusable widgets

Smooth animations

Clean spacing



---

Suggested Flutter Widgets

AnimatedSwitcher

AnimatedContainer

SingleChildScrollView

TextFormField

DropdownButtonFormField

Wrap

GridView

Column

Expanded



---

Suggested Flutter Packages

google_fonts

iconsax

image_picker

flutter_svg



---

Responsive Layout Rules

Avoid fixed width inside Row

Use Expanded/Flexible

Use SafeArea

Use SingleChildScrollView

Use ellipsis for long text

Make layout responsive for small devices




UX Goals

User should:

switch quickly between Grocery & Kitchen Tool

avoid navigation confusion

reuse same interaction flow

add kitchen inventory faster


The screen should feel:

unified

smooth

premium

modern

organized

responsive