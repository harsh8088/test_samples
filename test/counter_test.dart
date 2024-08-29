import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_samples/main.dart';

void main() {
  testWidgets('Counter increments', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

// Find the "Increment" button
    final incrementButton = find.byKey(const Key('increment'));

// Simulate tapping the button and wait for state updates
    await tester.tap(incrementButton);
    await tester.pumpAndSettle();

// Verify that the counter text has been updated
    expect(find.text('1'), findsOne);
  });
}
