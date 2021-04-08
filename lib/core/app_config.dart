import 'package:flutter/material.dart';

/// Model class configuration for the different flavors in the app stages
class AppConfig extends InheritedWidget {
  // Title of the flavor
  final String appTitle;
  // Flavor of the app
  final String buildFlavor;
  // Takes in the root widget
  final Widget child;
  // Color to differentiate flavors
  final MaterialColor primaryColor;

  AppConfig(
      {@required this.child,
      @required this.appTitle,
      @required this.buildFlavor,
      @required this.primaryColor});

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
