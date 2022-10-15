import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/widgets/drawer/drawer.dart';

void main() {
  testWidgets('Should renders DrawerTile', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(DrawerTile),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      home: DrawerTile(
        title: 'title',
        leading: Icons.local_fire_department,
        page: 0,
        controller: PageController(),
      ),
    ),
  );
}