import 'package:flutter/material.dart';
import 'package:solid_software_test_task/resources/strings_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          StringsManager.homeScreenText,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
