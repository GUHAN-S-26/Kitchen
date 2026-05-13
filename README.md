# Smart Kitchen App

A modern, mobile-first kitchen management application built with Flutter. This app helps users organize their kitchen, track item usage, and never run out of groceries.

## 🚀 Phase 1: Home Dashboard (Completed)

The primary focus of Phase 1 was establishing the core UI foundation and creating a premium, intuitive Home Dashboard.

### Key Features Implemented:
- **Custom Design System**:
    - **AppColors**: A curated palette of soft pastels and professional greens.
    - **AppTheme**: Modern Material 3 configuration using **Google Fonts (Inter)** for superior typography.
- **Modular UI Architecture**: Highly reusable widget components for maintainability.
- **Dashboard Components**:
    - **Header Section**: Personalized greeting, notification badge, and profile avatar.
    - **Search & Scan**: Rounded search interface with an integrated QR/Scanner action button.
    - **Statistics Grid**: Horizontal scrolling summary cards (Grocery, Tools, Low Stock, In Cart) with soft pastel backgrounds.
    - **Quick Actions**: Instant access to add groceries, tools, usage, and purchases.
    - **Inventory Lists**: Beautifully styled sections for **Low Stock** alerts and **Recent Usage** tracking.
- **Shopping Reminder**: High-visibility card to encourage cart review.
- **Navigation**:
    - **Custom Floating Bottom Nav**: A modern, rounded navigation bar.
    - **Interactive Add Button**: Center action button that opens a styled Bottom Sheet menu.

## 🚀 Phase 2: Kitchen Screen (Completed)

Phase 2 focused on building the detailed Kitchen management interface and implementing a robust multi-screen navigation system.

### Key Features Implemented:
- **Navigation Refactoring**:
    - Introduced **MainScreen** wrapper for seamless tab switching.
    - Optimized **CustomBottomNav** to dynamically handle active states across Home and Kitchen tabs.
- **Kitchen Screen Components**:
    - **KitchenHeader**: Context-aware header for grocery and tool management.
    - **KitchenToggle**: Premium animated segmented control for toggling between Grocery and Kitchen Tools.
    - **KitchenSearchBar**: Refined search interface with integrated filtering.
    - **BlockFilterChips**: Horizontal scrollable filters for kitchen blocks (Block A, B, C, D).
    - **GroceryItemsSection**: Detailed inventory list with "Sort by" functionality.
    - **GroceryItemCard**: Advanced item cards featuring:
        - Stock status indicators (In Stock/Low Stock).
        - Dynamic quantity tracking.
        - Animated progress bars for remaining stock.
    - **OrganizeSectionCard**: Call-to-action card for block-based kitchen organization.

## 🚀 Phase 3: Grocery Item Detail Screen (Completed)

Phase 3 focused on the deep-dive view for individual grocery items, providing interactive controls for quantity management and detailed tracking.

### Key Features Implemented:
- **Modular Detail View**:
    - Created a comprehensive **ItemDetailScreen** that orchestrates multiple functional widgets.
    - Integrated navigation from **GroceryItemCard** to the detail view for a seamless UX.
- **Detailed Detail Components**:
    - **ItemDetailHeader**: Styled header with back navigation, edit, and more options.
    - **ProductInformationCard**: High-level overview card with stock status pills and quantity progress visualization.
    - **StatisticsCardsSection**: Metric-driven cards for total quantity, used amount, refill needs, and addition dates.
    - **UpdateQuantitySection**: Interactive quantity controller with:
        - Precise +/- adjustments.
        - Unit selection dropdown.
        - Quick-add buttons for standard measurements (+10g, +50g, etc.).
        - Primary action buttons for **Used** and **Refill/Add** logic.
    - **UsageHistorySection**: Chronological list tracking every stock change with status icons and remaining balances.
    - **AboutStorageSection**: Detailed storage location info with "Change Location" functionality.
    - **RemoveItemButton**: Prominent red action button for inventory cleanup.

## 🚀 Phase 4: Add Grocery Screen (Completed)

Phase 4 introduced the "Add Item" workflow, refactoring the app's navigation to treat adding items as a primary, dedicated screen.

### Key Features Implemented:
- **Navigation Architecture Refactor**:
    - Converted the center FAB from a modal trigger into a primary navigation tab.
    - Updated **MainScreen** to handle 5 distinct tabs while maintaining consistent bottom navigation visibility.
- **Comprehensive Item Form**:
    - **AddItemHeader**: Title section with back navigation (returning to previous tab) and user profile UI.
    - **AddItemToggle**: Premium segmented control for switching between "Grocery" and "Kitchen Tool" modes.
    - **AddItemForm**: Feature-rich form including:
        - Category selector with horizontal icon cards.
        - Detailed block and location dropdowns.
        - Photo upload placeholder with a dashed-border UI.
        - Alerts and expiry date selection fields.

## 🚀 Phase 5: Usage History Screen (Completed)

Phase 5 focused on data visualization and historical tracking, helping users understand their consumption patterns.

### Key Features Implemented:
- **Advanced Data Visualization**:
    - Integrated the **fl_chart** package for high-performance graphics.
    - **UsageTrendChart**: A customized line chart featuring smooth curves, green gradient fills, and interactive tooltips.
- **Consumption Analytics**:
    - **AnalyticsGrid**: Summary cards with pastel backgrounds tracking Total Used, Items Used, Total Value, and Wasted metrics with trend comparison badges.
    - **TopUsedItemsList**: High-visibility list of frequently consumed items with trend indicators.
    - **RecentUsageList**: Chronological activity feed with precise timestamps and location tags.
- **Smart Insights**:
    - **SmartTipCard**: AI-driven information card offering eco-friendly tips to reduce kitchen waste.

## 🚀 Phase 6: Shopping Checklist Screen (Completed)

Phase 6 implemented the "Cart" tab, transforming it into a smart Shopping Checklist that automates grocery planning.

### Key Features Implemented:
- **Smart Planning UI**:
    - **ShoppingStatsRow**: Visual summary of Total Items, Low Stock items needing attention, and completed purchases.
    - **ShoppingInfoBanner**: Informational component explaining the logic behind automated item suggestions.
- **Interactive Checklist**:
    - **ItemsToBuyList**: Responsive checklist featuring:
        - Checkboxes for manual item selection.
        - Contextual stock badges (Low Stock/Running Low).
        - Direct "Mark Purchased" actions for instant inventory updates.
    - **PurchasedItemsList**: An `ExpansionTile` based section to hide/show completed purchases, using struck-through text for clarity.
    - **AddItemManuallyCard**: A modern, dashed-border custom component for ad-hoc shopping additions.

## 🚀 Phase 7: Add Item Manually Screen (Completed)

Phase 7 introduced a specialized form for adding custom items to the shopping list, ensuring users can plan for purchases beyond automated low-stock alerts.

### Key Features Implemented:
- **Dedicated Form Navigation**:
    - Integrated a "Manual Add" entry point into the Shopping Checklist.
    - Implemented a clean push-navigation flow for form-based item creation.
- **Rich Input Management**:
    - **ManualAddHeader**: Custom header featuring contextual navigation and user help icons.
    - **ManualAddForm**: A highly organized form container featuring:
        - Responsive two-column layouts for Quantity, Units, Category, and Priority.
        - Priority flags with color-coded visual indicators.
        - Character-counted notes section and integrated date pickers for reminders.
        - **Photo Upload UI**: A modern dashed-border container specifically designed for capturing item visual references.
- **Sticky Actions**:
    - **Add to Checklist Button**: A high-contrast, primary action button pinned to the bottom of the screen for quick form submission.

## 🚀 Phase 8: Block Management Screen (Completed)

Phase 8 introduced the "Block Management" interface, providing a central hub for organizing and monitoring all kitchen storage locations.

### Key Features Implemented:
- **Kitchen Organization UI**:
    - **BlockStatsRow**: Comprehensive metric cards tracking Total Blocks, Storage Health, Empty Slots, and Refill requirements.
    - **AddBlockBanner**: A high-contrast call-to-action banner for expanding storage capacity.
    - **BlockSearchActions**: Integrated search, filtering, and sorting controls designed for managing large storage systems.
- **Detailed Storage Inventory**:
    - **BlockList**: A responsive collection of storage block cards featuring:
        - **Category-specific Icons**: Visual representation of storage types (e.g., Pantry, Fridge).
        - **Health Indicators**: Color-coded status badges (Full / Warning) for at-a-glance monitoring.
        - **Storage Metrics**: Detailed item counts and stock health progress bars for every block.
- **UX Polish**:
    - **BlockTipBanner**: Interactive info-banner offering smart organization strategies.
    - **Layout Optimization**: Resolved complex RenderFlex overflow issues to ensure a perfect mobile experience across all device widths.

## 🚀 Phase 9: Wave Animation Floating Add Menu (Completed)

Phase 9 completely reimagined the "Add Item" interaction, replacing the standard bottom sheet with a high-fidelity, premium wave-based animation system.

### Key Features Implemented:
- **Premium Interaction Overhaul**:
    - Implemented a full-screen, blurred-background overlay for a focused interaction experience.
    - **Animation Choreography**: Leveraged the **flutter_animate** package to synchronize multiple staggered animations.
- **Dynamic Visual Elements**:
    - **Transforming FAB**: The center "+" button rotates and scales into a glowing green "X" with a custom bouncy `easeOutBack` effect.
    - **Radial Ripple Effect**: Animated, concentric green ripples that pulse outwards from the activation point.
    - **Bezier Wave Path**: A `CustomPainter` based curve that "draws" itself upwards in real-time, guiding the eye toward the actions.
- **Staggered Action Interface**:
    - **Path-Aligned Buttons**: Four colorful action buttons (Purchase, Usage, Kitchen Tool, Grocery) that appear sequentially along the bezier curve.
    - **Floating Label Pills**: White rounded labels that slide and fade in beside each button with a modern, high-end feel.
- **Seamless Unwind**: Smooth, synchronized reverse-animation sequence for all elements when closing or navigating.

## 🛠 Technologies Used
- **Core**: Flutter (Material 3)
- **Animation**: [flutter_animate](https://pub.dev/packages/flutter_animate)
- **Visualization**: [fl_chart](https://pub.dev/packages/fl_chart)
- **Typography**: [Google Fonts (Inter)](https://pub.dev/packages/google_fonts)
- **Icons**: [Iconsax](https://pub.dev/packages/iconsax)
- **Assets**: Flutter SVG

## 📸 Getting Started

1. **Clone the repository**
2. **Install dependencies**:
   ```bash
   flutter pub get
   ```
3. **Run the app**:
   ```bash
   flutter run
   ```

---
*Phases 4, 5, 6, 7, 8, and 9 completed on May 13, 2026.*
