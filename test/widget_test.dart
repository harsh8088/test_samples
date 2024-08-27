// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_samples/greeting_widget.dart';

void main() {
  testWidgets('GreetingWidget displays correct text',
      (WidgetTester tester) async {
    // Create the widget
    await tester.pumpWidget(
      const MaterialApp(
        home: GreetingWidget(name: 'Amit Kumar'),
      ),
    );

    // Find the text widget and verify it's content
    final textFinder = find.text('Welcome, Amit Kumar!');
    expect(textFinder, findsOneWidget);
  });
}
