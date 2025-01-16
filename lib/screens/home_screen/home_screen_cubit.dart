import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_test_task/screens/home_screen/home_screen.dart';
import 'package:solid_software_test_task/screens/home_screen/home_screen_state.dart';
import 'package:solid_software_test_task/utils/color_extension.dart';
import 'package:solid_software_test_task/utils/color_utils.dart';

/// A cubit that manages the [HomeScreen] state
class HomeScreenCubit extends Cubit<HomeScreenState> {
  /// Creates a [HomeScreenCubit] with default state
  HomeScreenCubit() : super(const HomeScreenState());

  /// Changes background and text color to newly generated
  void changeBackgroundColor() {
    final newBackgroundColor = ColorUtils().getRandomColor();
    final newTextColor = newBackgroundColor.invertBrightness();

    emit(
      HomeScreenState(
        backgroundColor: newBackgroundColor,
        textColor: newTextColor,
      ),
    );
  }
}
