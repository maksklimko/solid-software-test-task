import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:solid_software_test_task/utils/color_utils.dart';

import 'mocks.dart';

void main() {
  const opaqueTestColor = 0x55FFFFFF;
  const solidTestColor = 0xFFFFFFFF;

  group('Test random color generating', () {
    // Init mock class
    final mockRandom = MockRandom();
    final colorUtils = ColorUtils(random: mockRandom);

    setUp(() {
      // Stub nextInt() method
      when(() => mockRandom.nextInt(any())).thenReturn(opaqueTestColor);
    });

    test('Verify returning random color with isOpaque=true', () {
      final randomColor = colorUtils.getRandomColor(isOpaque: true);
      expect(randomColor, const Color(opaqueTestColor));
    });

    test('Verify returning random color with isOpaque=false', () {
      final randomColor = colorUtils.getRandomColor();
      expect(randomColor, const Color(solidTestColor));
    });
  });
}
