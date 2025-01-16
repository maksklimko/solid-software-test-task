import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_test_task/general/app.dart';

void main() {
  testWidgets('Verify home screen content displayed correctly',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());

    // Verify that text widget is displayed
    expect(find.text('Hey there'), findsOneWidget);
  });

  testWidgets('Verify home screen default background color is correct',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());

    // Find the Scaffold widget
    final scaffoldFinder = find.byType(Scaffold);

    // Ensure the Scaffold is present
    expect(scaffoldFinder, findsOneWidget);

    // Get the Scaffold widget
    final scaffoldWidget = tester.widget<Scaffold>(scaffoldFinder);

    // Assert the background color
    expect(scaffoldWidget.backgroundColor, equals(Colors.white));
  });

  testWidgets('Verify home screen default text color is correct',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());

    // Find the Text widget
    final textFinder = find.byType(Text);

    // Get the Text widget
    final textWidget = tester.widget<Text>(textFinder);

    // Assert the background color
    expect(textWidget.style?.color, equals(Colors.black));
  });
}
