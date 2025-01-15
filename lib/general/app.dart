import 'package:flutter/material.dart';
import 'package:solid_software_test_task/resources/strings_manager.dart';
import 'package:solid_software_test_task/widgets/home_screen.dart';

/// [App] widget is the root of application. It handles basic stuff like
/// theming, routing, localization, etc.
class App extends StatelessWidget {
  /// Constant stateless widget constuctor with [Key] parameter
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: StringsManager.appName,
      home: HomeScreen(),
    );
  }
}
