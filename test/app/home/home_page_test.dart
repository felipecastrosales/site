import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/home/home_page.dart';

void main() {
  testWidgets('Should renders HomePage', (tester) async {
    await _createWidget(tester: tester);
    expect(find.byType(HomePage), findsOneWidget);
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      home: HomePage(),
    ),
  );
}
