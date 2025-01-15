import 'dart:math';
import 'dart:ui';

import 'package:solid_software_test_task/resources/constants_manager.dart';

/// Util class that helps with color generation functionality
class ColorGenerator {
  /// Generates random color.
  ///
  /// Returns solid color if [isOpaque] is false.
  /// Else returns color with transparency.
  Color getRandomColor({bool isOpaque = false}) {
    final random = Random();

    // Geting random number between 0x00000000 and 0xFFFFFFFF
    final randomNumber = random.nextInt(ConstantsManager.maxColorValue);
    // Converting int to Color
    final randomColor = Color(randomNumber);

    return randomColor;
  }
}
