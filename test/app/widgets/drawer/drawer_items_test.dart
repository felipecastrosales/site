import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/widgets/drawer/drawer.dart';

void main() {
  testWidgets('Should renders DrawerItems', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(DrawerItems),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      home: DrawerItems(
        pageController: PageController(),
      ),
    ),
  );
}
