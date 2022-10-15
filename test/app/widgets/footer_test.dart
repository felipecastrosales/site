import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/widgets/widgets.dart';

void main() {
  testWidgets('Should renders Footer', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(Footer),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: Footer(),
    ),
  );
}
