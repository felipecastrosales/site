import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/widgets/dividers/dividers.dart';

void main() {
  testWidgets('Should renders CustomVerticalDivider', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(CustomVerticalDivider),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: CustomVerticalDivider(width: 1),
    ),
  );
}
