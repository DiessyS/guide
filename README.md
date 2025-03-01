# Guide

Guide is a Dart package that provides a centralized navigation management system for Flutter applications. It uses a `GlobalKey<NavigatorState>` to handle navigation globally, allowing seamless routing without requiring direct access to the `BuildContext` in every widget.

## Usage

### Initialize Guide
```dart
import 'package:flutter/material.dart';
import 'package:guide/guide.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Guide.routerKey,
      home: HomeScreen(),
    );
  }
}
```

### Navigate to Another Screen
```dart
Guide.goTo('/details', arguments: {'id': 42});
```

### Pop the Current Screen
```dart
Guide.goBack();
```
### Go to the First Screen
```dart
Guide.reset();
```

## API Reference
- `Guide.goTo(String routeName, {Object? arguments})` - Navigates to the specified route.
- `Guide.goBack()` - Pops the current route from the navigation stack.
- `Guide.reset()` - Pops all routes from the navigation stack.

## License
This project is licensed under the MIT License.

