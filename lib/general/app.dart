import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_test_task/resources/strings_manager.dart';
import 'package:solid_software_test_task/screens/home_screen/home_screen.dart';
import 'package:solid_software_test_task/screens/home_screen/home_screen_cubit.dart';

/// [App] widget is the root of application. It handles basic stuff like
/// theming, routing, localization, etc.
class App extends StatelessWidget {
  /// Constant stateless widget constuctor with [Key] parameter
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringsManager.appName,
      home: BlocProvider(
        create: (_) => HomeScreenCubit(),
        child: const HomeScreen(),
      ),
    );
  }
}
