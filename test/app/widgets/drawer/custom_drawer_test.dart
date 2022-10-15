import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/widgets/drawer/drawer.dart';

void main() {
  testWidgets('Should renders CustomDrawer', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(CustomDrawer),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      home: CustomDrawer(
        PageController(),
      ),
    ),
  );
}
