import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_test_task/resources/strings_manager.dart';
import 'package:solid_software_test_task/screens/home_screen/home_screen_cubit.dart';
import 'package:solid_software_test_task/screens/home_screen/home_screen_state.dart';
import 'package:solid_software_test_task/utils/color_utils.dart';

/// Main screen of the app
///
/// Implements background color changing functionality using [ColorUtils]
///
/// Also additional feature: changing text color depending on background color
/// to increase readability and exclude case when background color is equal
/// to text color
class HomeScreen extends StatelessWidget {
  /// Creates new instance of widget
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeScreenCubit, HomeScreenState>(
        bloc: context.read<HomeScreenCubit>(),
        builder: (BuildContext context, HomeScreenState state) {
          return GestureDetector(
            onTap: () =>
                context.read<HomeScreenCubit>().changeBackgroundColor(),
            child: Scaffold(
              backgroundColor: state.backgroundColor,
              body: Center(
                child: Text(
                  StringsManager.homeScreenText,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: state.textColor),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
