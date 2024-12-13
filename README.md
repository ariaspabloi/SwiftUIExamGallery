# SwiftUIExamGallery

## Project Description
SwiftUIExamGallery is an iOS application developed as part of a SwiftUI course exam. The app showcases a dynamic gallery of postcards, emphasizing the practical application of essential SwiftUI concepts. This project includes navigation, animations, persistent data handling, and user-friendly design principles.

---

## Features Implemented

### 1. **Navigation and User Interaction**
- Utilized `NavigationView` and `NavigationStack` to manage screen transitions.
- Implemented navigation title updates dynamically based on user input.
- Included toolbar buttons for accessing settings and additional features.

### 2. **Dynamic List of Postcards**
- Created a scrollable list displaying 20 unique postcard entries.
- Designed reusable `PostcardCell` components to ensure consistent styling.
- Alternated background colors for cells using custom color sets (`CreamWhite` and `SoftGray`).

### 3. **Animations**
- Ensured smooth transitions to improve user experience.

### 4. **Persistent Data with AppStorage**
- Utilized `@AppStorage` to:
  - Save the username entered on the main screen.
  - Persist the last visited screen when the app is closed.

### 5. **Customizable Settings View**
- Created a `SettingsView` accessible via a sheet.
- Enabled drag-to-expand behavior with `.presentationDetents` for medium and large modal sizes.

### 6. **Custom Colors and Icons**
- Defined two custom `ColorSet` entries for consistent theming.
- Added an app icon to enhance the project's visual identity.

### 7. **Project Organization**
- Structured code into folders (e.g., `Views`, `Components`, `Models`, `Resources`) for maintainability.
- Adhered to clean code practices for scalability.

---

## Technologies Used
- **Language**: Swift 5
- **Framework**: SwiftUI
- **Storage**: AppStorage for persistent state management

---

## How to Run
1. Clone this repository to your local machine.
2. Open the project in Xcode (version 14 or later recommended).
3. Build and run the app on the simulator or a physical device.

---

## Key Learnings
This project demonstrates:
- Building and managing navigation flows in SwiftUI.
- Creating reusable components to maintain consistent design.
- Applying animations to enhance user experience.
- Persisting data effectively using `AppStorage`.
- Structuring projects for clarity and maintainability.

---

## Video

---

### Developed as part of the SwiftUI Course by **DesafíoLatam**.
