import 'package:flutter/material.dart';
import 'package:solid_software_test_task/screens/home_screen/home_screen.dart';

/// Represents state class for [HomeScreen]
class HomeScreenState {
  /// Background color of screen
  /// Defaults to [Colors.white]
  final Color backgroundColor;

  /// Text color of the screen. Must be inverted to [backgroundColor]
  /// Defaults to [Colors.black]
  final Color textColor;

  /// Creates a new [HomeScreenState] instance
  const HomeScreenState({
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
  });
}
