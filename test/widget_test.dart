// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_samples/greeting_widget.dart';
import 'package:test_samples/items_widget.dart';

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

  //ItemsWidget
  testWidgets('ItemsWidget finds a deep item in a long list', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(ItemsWidget(
      items: List<String>.generate(10000, (i) => 'Item $i'),
    ));

    final listFinder = find.byType(Scrollable);
    final itemFinder = find.byKey(const ValueKey('item_50_text'));

    // Scroll until the item to be found appears.
    await tester.scrollUntilVisible(
      itemFinder,
      500.0,
      scrollable: listFinder,
    );

    // Verify that the item contains the correct text.
    expect(itemFinder, findsOneWidget);
  });



}
