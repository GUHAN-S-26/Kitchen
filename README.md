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

## 🚀 Phase 10: Unified Add Item Screen & Routing Refactor (Completed)

Phase 10 refactored the item creation workflow to be faster and more intuitive, moving from tab-based forms to direct-push navigation.

### Key Features Implemented:
- **Direct Route Navigation**:
    - Refactored `FloatingAddMenu` to use `Navigator.push` for all actions, allowing forms to overlay the current dashboard context.
    - Improved UX by enabling a "Direct Action" workflow that returns users exactly where they left off.
- **Context-Aware Forms**:
    - Updated `AddItemScreen` to support `initialIsGrocery` states, ensuring "Add Grocery" and "Add Kitchen Tool" actions jump directly to the correct UI mode.

## 🚀 Phase 11: Add Usage Screen (Completed)

Phase 11 introduced a dedicated interface for tracking consumption and managing stock reduction.

### Key Features Implemented:
- **Refined Usage Workflow**:
    - **Item Selector**: A premium card showing the selected item's precise kitchen location (Block/Shelf).
    - **Stock Overview**: Visualizing current stock with animated progress bars and minimum alert thresholds.
    - **Quantity Used Section**: 
        - Integrated quick-select chips for standard usage increments.
        - Precision input with unit-aware dropdowns.
- **Live Preview**: Real-time "Remaining Stock" card that updates dynamically as users input usage data.

## 🚀 Phase 12: Add Purchase Screen (Completed)

Phase 12 focused on the inventory refill experience, tracking both stock updates and purchase metadata.

### Key Features Implemented:
- **Comprehensive Refill Form**:
    - **Current vs. Updated Preview**: Side-by-side visualization of stock before and after the purchase.
    - **Expenditure Tracking**: Input fields for purchase price (with ₹ prefix) and store location.
    - **Receipt Management**: A modern, dashed-border "Add Photo" container for digitalizing bills and receipts.
- **Temporal Logging**: Integrated date and time pickers to maintain an accurate purchase history.

## 🚀 Phase 13: Notifications Screen (Completed)

Phase 13 built a centralized hub for all kitchen alerts, ensuring users stay updated on stock levels and system changes.

### Key Features Implemented:
- **Centralized Alerts Hub**:
    - **Categorized Filtering**: Horizontally scrolling filter chips (`All`, `Low Stock`, `Checklist`, `Updates`) with integrated unread badge counts.
    - **Grouped Timeline**: Notifications categorized by "Today" and "Yesterday" for easier scanning.
- **Interactive Notification Cards**:
    - Color-coded icons for at-a-glance status (Orange for Warnings, Blue for Checklist, Green for Updates).
    - Unread indicators and high-contrast styling for new alerts.
- **Premium Empty State**: A friendly fallback UI with custom illustrations and a "Refresh" action button.

## 🚀 Phase 14: Navigation Integration & Performance Optimization (Completed)

Phase 14 focused on cross-module integration and deep performance tuning to ensure a lightning-fast, production-ready experience.

### Key Features Implemented:
- **Global Notification Integration**:
    - Synchronized the **Notifications Screen** across all primary modules (Kitchen, Usage, Shopping, Add Item, etc.).
    - Ensured consistent header behavior and accessibility for alerts throughout the app.
- **Critical Performance Optimization**:
    - **Lazy Loading Tabs**: Refactored `MainScreen` to implement a lazy-loading strategy for the `IndexedStack`. This prevents the app from building all five complex screens at once, drastically reducing initial memory footprint and startup time.
    - **Startup Speed Improvement**: Eliminated "444 frame skip" warnings by optimizing heavy widget builds and resolving network-blocking image requests.
    - **Image Stability**: Replaced unreliable or broken image URLs with stable placeholder services to prevent startup hangs caused by network timeouts.
- **Code Quality & Maintenance**:
    - **Deprecation Migration**: Conducted a full sweep of the codebase to migrate legacy `withOpacity()` calls to the modern `.withValues(alpha: ...)` standard.
    - **Theme Modernization**: Updated the global design system to use the latest Material 3 `surface` color properties, replacing deprecated `background` fields.
    - **Zero-Warning Build**: Resolved all static analysis issues, including unused imports, unused variables, and subtle layout syntax errors, ensuring a perfectly clean `flutter analyze` report.

## 🚀 Phase 15: Notification Settings Screen (Completed)

Phase 15 introduced granular control over the app's alert system, allowing users to customize exactly how and when they receive kitchen updates.

### Key Features Implemented:
- **Granular Alert Control**:
    - Grouped settings for **General Alerts** (Low Stock, Shopping, Purchases), **Expiry Reminders**, and **Usage Summaries**.
    - **Smart Summaries**: Configurable weekly/monthly kitchen reports with a detailed "Summary Includes" information card.
- **Advanced Preference Management**:
    - **Quiet Hours**: Custom sleep-mode scheduling with a dedicated `QuietHoursTimePicker` using moon/sun visual cues and native time picker integration.
    - **AI Suggestions**: Toggle for smart refill predictions and eco-friendly kitchen tips.
- **UX Integration**:
    - Seamless navigation from the main **Notifications** hub via a dedicated settings entry point.
    - High-fidelity UI with premium toggle switches, dropdown tiles, and pastel-themed info cards.

## 🚀 Phase 16: Profile & Settings Screen (Completed)

Phase 16 established a centralized Profile hub, providing comprehensive account management and global app configuration.

### Key Features Implemented:
- **Premium Profile Interface**:
    - **ProfileHeaderCard**: A stunning, soft green gradient header featuring user identity, contact details, and floating edit actions.
    - **Universal Profile Access**: Wrapped profile avatars across all primary modules (Dashboard, Kitchen, Notifications) with navigation hooks to the settings hub.
- **Grouped Configuration Architecture**:
    - **Account Management**: Centralized controls for editing profile details, updating photos, and renaming the kitchen.
    - **Global App Preferences**: Integrated selectors for **Dark Mode**, **Language** (English/local), and measurement **Units** (kg/g/ml).
    - **Data Management Hub**: Secure workflows for backing up data, exporting logs, and a critical **Reset App** action with confirmation safety guards.
- **Security & More**:
    - Styled **Logout** workflow with a dedicated confirmation dialog.
    - Integrated links to Notification Settings, Privacy Policy, and About App (including dynamic versioning badges).

## 🚀 Phase 17: Kitchen Tool Screen (Completed)

Phase 17 focused on expanding the app's inventory management capabilities by implementing a dedicated section for kitchen tools and equipment.

### Key Features Implemented:
- **Kitchen Toggle Refactor**: 
    - Successfully refactored `KitchenToggle` into a controlled component, enabling seamless state-driven switching between Grocery and Kitchen Tool views.
- **Kitchen Tool Inventory UI**:
    - **KitchenToolFilterChips**: Created a horizontally scrollable list of categories (All, Cooking, Storage, Cleaning, Others) with premium active-state styling.
    - **KitchenToolSection**: Implemented the main inventory list layout featuring dynamic headers and sorting capabilities.
    - **KitchenToolCard**: Built a highly polished, modern list card featuring:
        - Pastel-tinted image containers with soft shadows.
        - Bold typography for tool names and contextual location subtitles.
        - **KitchenToolStatusBadge**: A dynamic status indicator supporting 4 visual states (Available, In Use, Needs Sharpening, Missing).
- **Navigation Integration**:
    - Integrated a contextual **FloatingAddButton** that pushes the Add Item Screen with the "Kitchen Tool" mode automatically pre-selected.

## 🚀 Phase 18: Kitchen Tool Detail Screen (Completed)

Phase 18 introduced a comprehensive detail view for individual kitchen tools, providing advanced tracking for tool condition and maintenance.

### Key Features Implemented:
- **Modular Detail View**:
    - Created a full-screen `KitchenToolDetailScreen` using a `CustomScrollView` with `Sliver` components for a premium scrolling experience.
- **Detailed Detail Components**:
    - **ToolDetailHeader**: Styled header with back navigation, edit, and more options.
    - **ToolInfoCard**: Top-level summary showing the tool image, name, status badge, location, category, and quantity.
    - **ToolStatsGrid**: Metric-driven 2x2 grid displaying Total Pieces, Available, In Use, and Last Used stats.
    - **ToolConditionSection**: Interactive selector for tracking the current condition (Good, Needs Cleaning, Needs Sharpening, Damaged, Missing).
    - **UpdateToolQuantitySection**: Responsive quantity management buttons (+/-), "Add Tool", and "Mark Missing" actions.
    - **StorageLocationCard**: Detailed storage location info including shelf positions.
    - **MaintenanceReminderCard**: Information cards showing predefined cleaning and sharpening schedules.
    - **ToolUsageHistorySection**: A vertical timeline visualizing the lifecycle of the tool (Used, Returned, Cleaned, Moved) with status-specific iconography.
    - **RemoveToolButton**: A prominent, outlined red action button for inventory cleanup.

## 🚀 Phase 19: Kitchen Tool Detail Screen Redesign (Completed)

Phase 19 focused on a complete visual and functional overhaul of the Kitchen Tool Detail view, moving from a data-heavy analytics design to a minimalist, modern, and high-performance UI.

### Key Features Implemented:
- **Minimalist UX Overhaul**: 
    - Replaced the previous detailed layout with a cleaner, focused design using rounded soft cards and consistent white space.
- **Streamlined Components**:
    - **KitchenToolDetailHeader**: A modern header featuring a left-aligned back arrow, bold title, and a soft green rounded edit button.
    - **ToolOverviewCard**: A high-impact summary card featuring a large tool image, status pill, location details, and a large green highlighted quantity number on the right.
    - **ToolLocationCard**: A consolidated storage section that displays current location (Kitchen/Drawer) and provides a direct "Update" action button.
    - **ToolConditionCard**: A clean container for condition management with animated selectable chips (Good, Needs Cleaning, Sharpening, etc.) featuring green border highlights.
    - **UpdateQuantityCard**: A premium quantity management interface featuring large `[ - ]` and `[ + ]` controls combined with a responsive row of quick-adjust buttons (-2, -1, +1, +2).
    - **RemoveToolButton**: A simplified, outlined red button at the bottom with an integrated confirmation safety dialog.
- **Efficiency Improvements**:
    - Removed complex analytics, maintenance reminders, and usage timelines to create a faster, lightweight interaction flow focused on core management tasks.

## 🚀 Phase 20: State Management & Local Persistence (Completed)

Phase 20 transformed the Smart Kitchen app from a UI prototype into a fully functional, offline-first application by implementing a robust state management and persistence architecture.

### Key Features Implemented:
- **Riverpod State Management**:
    - Implemented `StateNotifier` providers for all core domains (Grocery, Tools, Usage, Purchase).
    - Reactive UI updates across the Dashboard, Kitchen, and Shopping Checklist screens.
    - Derived providers for real-time statistics and automated shopping suggestions.
- **Hive Local Database**:
    - High-performance, on-device NoSQL storage for all inventory and history data.
    - Custom Hive TypeAdapters for high-speed serialization of complex models.
    - **Offline-First Design**: All data persists across app restarts without requiring a cloud backend.
- **Repository Pattern Architecture**:
    - Clean separation of concerns: `UI` → `Riverpod Providers` → `Repositories` → `Hive Services` → `Local Storage`.
- **Automated Inventory Logic**:
    - **Smart Refills**: Adding a "Purchase" record automatically increments grocery stock levels.
    - **Usage Tracking**: Recording "Usage" automatically decrements stock and triggers low-stock alerts.
    - **Dynamic Shopping List**: The checklist is auto-populated based on real-time stock levels vs. user-defined minimums.

## 🛠 Technologies Used
- **Core**: Flutter (Material 3)
- **State Management**: [flutter_riverpod](https://pub.dev/packages/flutter_riverpod)
- **Local Database**: [hive_flutter](https://pub.dev/packages/hive_flutter)
- **Animation**: [flutter_animate](https://pub.dev/packages/flutter_animate)
- **Visualization**: [fl_chart](https://pub.dev/packages/fl_chart)
- **Typography**: [Google Fonts (Inter)](https://pub.dev/packages/google_fonts)
- **Icons**: [Iconsax](https://pub.dev/packages/iconsax)
- **Utilities**: [uuid](https://pub.dev/packages/uuid)
- **Performance**: Lazy Loading, Asset Optimization, NoSQL Persistence

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
*Phases 4 through 20 completed on May 13-15, 2026.*
