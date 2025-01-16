import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_test_task/utils/color_extension.dart';

void main() {
  test('Verify inverting color brightness', () {
    // Getting inverted color
    final invertedColor = Colors.white.invertBrightness();
    // Ensure that inverted color is correct
    expect(invertedColor, Colors.black);
  });
}
