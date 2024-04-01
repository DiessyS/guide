import 'package:flutter/material.dart';

class Guide {
  Guide._();

  static final GlobalKey<NavigatorState> _key = GlobalKey<NavigatorState>();

  static GlobalKey<NavigatorState> get routerKey => _key;

  static BuildContext get _context {
    final context = _key.currentContext;
    if (context == null) {
      throw StateError('Guide not initialized');
    }
    return context;
  }

  static Future<void> goTo(String routeName, {Object? arguments}) async {
    await Navigator.of(_context).pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  static void goBack() {
    if (Navigator.of(_context).canPop()) {
      Navigator.of(_context).pop();
    }
  }

  static void reset() {
    Navigator.of(_context).popUntil((route) => route.isFirst);
  }
}
