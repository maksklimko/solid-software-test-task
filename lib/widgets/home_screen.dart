import 'package:flutter/material.dart';
import 'package:solid_software_test_task/resources/strings_manager.dart';
import 'package:solid_software_test_task/utils/color_generator.dart';

/// Main screen of the app
///
/// Implements background color changing functionality using [ColorGenerator]
///
/// Also additional feature: changing text color depending on background color
/// to increase readability and exclude case when background color is equal
/// to text color
class HomeScreen extends StatefulWidget {
  /// Creates new instance of widget
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {}),
      child: Scaffold(
        backgroundColor: ColorGenerator().getRandomColor(),
        body: Center(
          child: Text(
            StringsManager.homeScreenText,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
    );
  }
}
