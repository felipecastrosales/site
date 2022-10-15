import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/home/components/experience/experience.dart';

void main() {
  testWidgets('Should renders Experience', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(Experience),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: Experience(),
    ),
  );
}
