# Campus Canteen 🍽️

A Flutter mini-project that demonstrates Dart and Flutter concepts through a campus-canteen theme. The app opens with an experiment launcher; choose an experiment to explore its individual UI or behavior.

## Features

- 19 guided experiments covering Dart fundamentals and Flutter UI concepts
- Canteen-themed examples: menu layouts, item quantities, cart state, forms, order animations and dish data
- Responsive layouts, navigation, named routes, reusable widgets and themes
- Provider state management and REST API examples using TheMealDB
- A counter example with a Flutter widget test

## Getting started

**Requirements:** Flutter SDK (stable), Dart SDK included with Flutter, and an emulator, connected device, or Chrome.

```bash
flutter doctor
flutter pub get
flutter run
```

Run in Chrome:

```bash
flutter run -d chrome
```

Run the widget test:

```bash
flutter test
```

Run one experiment directly (example):

```bash
flutter run -t lib/experiments/exp02a_widgets.dart
```

## Experiments

| Experiment | Source file | Concept demonstrated |
|---|---|---|
| 1b | `exp01b_dart_program.dart` | Dart basics and canteen bill calculation |
| 2a | `exp02a_widgets.dart` | Text, Image and Container widgets |
| 2b | `exp02b_layouts.dart` | Row, Column and Stack layouts |
| 3a | `exp03a_responsive_ui.dart` | Responsive UI with MediaQuery |
| 3b | `exp03b_breakpoints.dart` | LayoutBuilder breakpoints |
| 4a | `exp04a_navigation.dart` | Navigator push and pop |
| 4b | `exp04b_named_routes.dart` | Named routes for Home, Cart and Order |
| 5a | `exp05a_stateless_stateful.dart` | StatelessWidget, StatefulWidget and setState |
| 5b | `exp05b_provider.dart` | Cart state with Provider |
| 6a | `exp06a_custom_widgets.dart` | Reusable custom buttons and cards |
| 6b | `exp06b_themes.dart` | ThemeData and custom styling |
| 7a | `exp07a_form.dart` | Canteen account form |
| 7b | `exp07b_form_validation.dart` | Form validation and error messages |
| 8a | `exp08a_animations.dart` | AnimatedContainer and AnimatedOpacity |
| 8b | `exp08b_fade_slide.dart` | FadeTransition and SlideTransition |
| 9a | `exp09a_fetch_api.dart` | Fetch dish data from TheMealDB REST API |
| 9b | `exp09b_display_api_data.dart` | Display API data in dish cards |
| 10a | `exp10a_counter_app.dart` | Counter app and widget testing |
| 10b | `exp10b_debugging.dart` | debugPrint and null-safety debugging |

## Code snippets

### Experiment launcher

`lib/main.dart` registers each experiment with a title and widget builder:

```dart
final List<Experiment> experiments = [
  Experiment('2a', 'Welcome screen (widgets)',
      (_) => const exp2a.MyApp()),
  Experiment('5b', 'Cart with Provider',
      (_) => const exp5b.ProviderRoot()),
  Experiment('9a', 'Fetch dishes from REST API',
      (_) => const exp9a.ApiApp()),
];
```

### Update a cart quantity

The stateful-widget experiment uses `setState` to refresh the UI after a user action:

```dart
setState(() {
  quantity++;
});
```

### REST API example

The API experiments use the `http` package to request dish data from TheMealDB. See `lib/experiments/exp09a_fetch_api.dart` for the full request and error handling.

## Screenshots / experiment outputs

The supplied source ZIP did not include captured screenshots. This section deliberately does not use mock images as if they were real application output.

After running the experiments, save genuine screenshots in `screenshots/` with names such as:

- `01-experiment-launcher.png`
- `02-widgets.png`
- `03-responsive-layout.png`
- `04-navigation.png`
- `05-cart-provider.png`
- `06-form-validation.png`
- `07-animations.png`
- `08-api-dishes.png`
- `09-counter-test.png`

Embed them in this README, for example:

```md
![Campus Canteen experiment launcher](screenshots/01-experiment-launcher.png)
```

To capture an output, run `flutter run`, open an experiment from the launcher, and take a screenshot of the running app. For the test experiment, run `flutter test` and capture the terminal output if your report requires it.

## Dependencies

- `provider`: cart state management (Experiment 5b)
- `http`: REST API requests (Experiments 9a and 9b)
- `flutter_test`: widget tests (Experiment 10a)

Experiments 9a and 9b require an internet connection.

## Project structure

```text
.
├── lib/
│   ├── main.dart
│   └── experiments/
├── test/
│   └── widget_test.dart
├── pubspec.yaml
├── README.md
└── screenshots/
```

## Notes

- Each file in `lib/experiments/` is intended to be runnable independently with `flutter run -t <file-path>`.
- For Android builds, ensure the app has internet permission when using the REST API experiments.
- Experiment 10b intentionally demonstrates a null-safety debugging scenario; review its comments before changing the null assertion.

---

Built as a learning project to explore Flutter and Dart through a Campus Canteen theme.
