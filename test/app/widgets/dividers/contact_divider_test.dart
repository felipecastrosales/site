import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/widgets/dividers/dividers.dart';

void main() {
  testWidgets('Should renders ContactDivider', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(ContactDivider),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: ContactDivider(),
    ),
  );
}
