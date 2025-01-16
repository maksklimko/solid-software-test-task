import 'dart:math';
import 'dart:ui';

import 'package:solid_software_test_task/resources/constants_manager.dart';

/// Utility class that helps with color generation functionality
class ColorUtils {
  /// Separated random instance to make this class testable
  final Random random;

  /// Constructor that accept optional [Random] instance
  ColorUtils({Random? random}) : random = random ?? Random();

  /// Generates random color.
  ///
  /// Returns solid color if [isOpaque] is false.
  /// Else returns color with transparency.
  Color getRandomColor({
    bool isOpaque = false,
  }) {
    // Geting random number between 0x00000000 and 0xFFFFFFFF
    final randomNumber = random.nextInt(ConstantsManager.maxColorValue);
    // Converting int to Color
    final randomColor = Color(randomNumber);

    if (!isOpaque) {
      // Returning solid color
      return randomColor.withAlpha(ConstantsManager.maxColorAlphaValue);
    }

    return randomColor;
  }
}
