# 🍽️ Campus Canteen — Flutter Lab Experiments

This repository contains 19 practical experiments demonstrating Dart and Flutter concepts through a Campus Canteen theme. Each experiment focuses on a specific programming concept, with its aim, explanation, source code, and space for the corresponding output screenshot.

## 📌 Project Overview

The Campus Canteen project is designed to demonstrate fundamental and intermediate Flutter development concepts through examples related to a college canteen.

The experiments cover Dart programming, Flutter widgets, responsive layouts, navigation, state management, reusable components, forms, animations, REST API integration, testing, and debugging.

## 🧪 Experiments

### Experiment 1 — Dart Programming Basics

**Aim:** Understand the basic structure of a Dart program and learn variables, arithmetic operations, and console output.

**Explanation:** This experiment demonstrates Dart's `main()` function, variable declaration, basic calculations, and printing results. The example uses a canteen bill calculation to demonstrate fundamental programming concepts.

**Source code:** `lib/experiments/exp01b_dart_program.dart`

**Output screenshot:** Add the captured Dart console output here.

---

### Experiment 2 — Flutter Widgets and Layouts

**Aim:** Understand commonly used Flutter widgets and learn how to arrange UI elements.

**Explanation:** These experiments demonstrate the use of `Text`, `Image`, `Container`, `Row`, `Column`, and `Stack` widgets. The canteen-themed examples show how different widgets can be combined to create a structured user interface.

**Experiments included:**
- 2a — Basic Flutter widgets
- 2b — Row, Column, and Stack layouts

**Source code:**
- `lib/experiments/exp02a_widgets.dart`
- `lib/experiments/exp02b_layouts.dart`

**Output screenshot:** Add the captured widget and layout outputs here.

---

### Experiment 3 — Responsive User Interface

**Aim:** Develop Flutter layouts that adapt to different screen sizes.

**Explanation:** `MediaQuery` is used to obtain screen dimensions, while `LayoutBuilder` helps build layouts based on available space. These techniques help create responsive interfaces for different devices and orientations.

**Experiments included:**
- 3a — Responsive UI using MediaQuery
- 3b — Responsive breakpoints using LayoutBuilder

**Source code:**
- `lib/experiments/exp03a_responsive_ui.dart`
- `lib/experiments/exp03b_breakpoints.dart`

**Output screenshot:** Add screenshots showing the responsive layouts.

---

### Experiment 4 — Navigation in Flutter

**Aim:** Learn how to navigate between different screens in a Flutter application.

**Explanation:** This experiment demonstrates navigation using `Navigator.push()`, `Navigator.pop()`, and named routes. The examples use canteen-related screens such as Home, Cart, and Order to demonstrate screen navigation.

**Experiments included:**
- 4a — Navigation using push and pop
- 4b — Navigation using named routes

**Source code:**
- `lib/experiments/exp04a_navigation.dart`
- `lib/experiments/exp04b_named_routes.dart`

**Output screenshot:** Add screenshots of the navigation screens here.

---

### Experiment 5 — State Management

**Aim:** Understand how to manage and update application data in Flutter.

**Explanation:** The experiments demonstrate local state management using `StatefulWidget` and `setState()`, followed by shared state management using the Provider package. The canteen cart example demonstrates how item quantities and shared data can be updated.

**Experiments included:**
- 5a — StatelessWidget, StatefulWidget, and setState
- 5b — State management using Provider

**Source code:**
- `lib/experiments/exp05a_stateless_stateful.dart`
- `lib/experiments/exp05b_provider.dart`

**Output screenshot:** Add screenshots showing the state changes and cart updates.

---

### Experiment 6 — Custom Widgets and Themes

**Aim:** Create reusable Flutter components and apply consistent application styling.

**Explanation:** Custom widgets help avoid repeated UI code. `ThemeData` is used to maintain consistent colors, text styles, and component appearances across the application.

**Experiments included:**
- 6a — Creating custom widgets
- 6b — Applying themes and styling

**Source code:**
- `lib/experiments/exp06a_custom_widgets.dart`
- `lib/experiments/exp06b_themes.dart`

**Output screenshot:** Add screenshots of the custom widgets and themed UI.

---

### Experiment 7 — Forms and Validation

**Aim:** Collect user input and validate form fields in Flutter.

**Explanation:** These experiments demonstrate form creation, text controllers, and input validation. The validation example checks user-entered information and displays appropriate error messages when the input is invalid.

**Experiments included:**
- 7a — Creating forms
- 7b — Form validation

**Source code:**
- `lib/experiments/exp07a_form.dart`
- `lib/experiments/exp07b_form_validation.dart`

**Output screenshot:** Add screenshots of the form and validation results.

---

### Experiment 8 — Flutter Animations

**Aim:** Understand how to create animations and transitions in Flutter.

**Explanation:** `AnimatedContainer` and `AnimatedOpacity` demonstrate basic animations. `FadeTransition` and `SlideTransition` demonstrate additional animation effects that make application interfaces more interactive.

**Experiments included:**
- 8a — Basic Flutter animations
- 8b — Fade and slide transitions

**Source code:**
- `lib/experiments/exp08a_animations.dart`
- `lib/experiments/exp08b_fade_slide.dart`

**Output screenshot:** Add screenshots showing the animation states.

---

### Experiment 9 — REST API Integration

**Aim:** Learn how to retrieve and display data from an external REST API.

**Explanation:** The experiments use the `http` package to send API requests to TheMealDB. Retrieved dish information is processed and displayed through Flutter UI components.

**Experiments included:**
- 9a — Fetching data from a REST API
- 9b — Displaying API data in Flutter widgets

**Source code:**
- `lib/experiments/exp09a_fetch_api.dart`
- `lib/experiments/exp09b_display_api_data.dart`

**Output screenshot:** Add screenshots showing the fetched dish data.

---

### Experiment 10 — Testing and Debugging

**Aim:** Understand basic Flutter testing and debugging techniques.

**Explanation:** The counter application demonstrates updating UI state and verifying widget behavior. The debugging experiment demonstrates the use of `debugPrint()` and Dart null-safety concepts.

**Experiments included:**
- 10a — Counter application and widget testing
- 10b — Debugging and null safety

**Source code:**
- `lib/experiments/exp10a_counter_app.dart`
- `lib/experiments/exp10b_debugging.dart`
- `test/widget_test.dart`

**Output screenshot:** Add the application output and test results here.

---

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Dart | Programming language |
| Flutter | Cross-platform UI development |
| Provider | State management |
| HTTP | REST API communication |
| TheMealDB | External dish data |
| Flutter Test | Widget testing |

## 🚀 How to Run the Project

**Requirements:**
- Flutter SDK
- Dart SDK (included with Flutter)
- Android emulator, physical device, or Chrome

**Installation:**

```bash
flutter doctor
flutter pub get
flutter run
```

To run the application in Chrome:

```bash
flutter run -d chrome
```

To execute the widget tests:

```bash
flutter test
```

To run an individual experiment:

```bash
flutter run -t lib/experiments/exp02a_widgets.dart
```

Replace the file path with the experiment you want to execute.

## 📂 Repository Structure

```text
Campus-Canteen/
│
├── lib/
│   ├── main.dart
│   └── experiments/
│       ├── exp01b_dart_program.dart
│       ├── exp02a_widgets.dart
│       ├── exp02b_layouts.dart
│       ├── exp03a_responsive_ui.dart
│       ├── exp03b_breakpoints.dart
│       ├── exp04a_navigation.dart
│       ├── exp04b_named_routes.dart
│       ├── exp05a_stateless_stateful.dart
│       ├── exp05b_provider.dart
│       ├── exp06a_custom_widgets.dart
│       ├── exp06b_themes.dart
│       ├── exp07a_form.dart
│       ├── exp07b_form_validation.dart
│       ├── exp08a_animations.dart
│       ├── exp08b_fade_slide.dart
│       ├── exp09a_fetch_api.dart
│       ├── exp09b_display_api_data.dart
│       ├── exp10a_counter_app.dart
│       └── exp10b_debugging.dart
│
├── test/
│   └── widget_test.dart
│
├── screenshots/
├── pubspec.yaml
└── README.md
```

## Experiment Screenshots

Screenshots of the actual experiment outputs can be added to the `screenshots/` folder.

Suggested screenshot names:

- `experiment_01.png`
- `experiment_02_widgets.png`
- `experiment_02_layouts.png`
- `experiment_03_responsive.png`
- `experiment_04_navigation.png`
- `experiment_05_state_management.png`
- `experiment_06_custom_widgets.png`
- `experiment_07_forms.png`
- `experiment_08_animations.png`
- `experiment_09_api.png`
- `experiment_10_testing.png`

After capturing an output, add it to this README using Markdown:

```md
![Experiment 1 - Dart Basics](screenshots/experiment_01.png)
```

*Note: The screenshot filenames above are suggestions. Add the images after capturing the actual outputs; no sample images are presented as real experiment results.*

## 📚 Learning Outcomes

Through these experiments, the project demonstrates:

- Understanding of Dart programming fundamentals.
- Building user interfaces using Flutter widgets.
- Designing responsive layouts.
- Implementing navigation between screens.
- Managing application state.
- Creating reusable components and themes.
- Handling forms and user input validation.
- Implementing animations and transitions.
- Fetching and displaying REST API data.
- Performing basic testing and debugging.

---

**Campus Canteen — Flutter Lab Experiments**

