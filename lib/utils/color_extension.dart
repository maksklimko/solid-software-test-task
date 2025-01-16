import 'package:flutter/material.dart';

/// Extension to add utility methods to the [Color] class
extension ColorExtension on Color {
  /// Returns a [Color] with brightness adjusted to create an inverted effect.
  ///
  /// If the luminance is high (> 0.5), the brightness is reduced.
  /// If the luminance is low (<= 0.5), the brightness is increased.
  Color invertBrightness() {
    // Convert Color to HSLColor
    final hsl = toHSL();
    // Provide color brightness multiplier depending on color brightness
    final brightnessMultiplier = hsl.lightness > 0.5 ? 0.5 : 2;
    // Calculate adjusted brightness
    final adjustedBrightness = hsl.lightness * brightnessMultiplier;

    // Getting adjusted hsl color with adjusted lightness
    final adjustedHSL = hsl.withLightness(adjustedBrightness);

    return adjustedHSL.toColor();
  }

  /// Converts the [Color] to [HSLColor].
  HSLColor toHSL() {
    return HSLColor.fromColor(this);
  }
}
