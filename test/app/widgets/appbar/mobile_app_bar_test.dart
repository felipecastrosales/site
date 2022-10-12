import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/widgets/appbar/appbar.dart';

void main() {
  testWidgets('Should renders MobileAppBar', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(MobileAppBar),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: MobileAppBar(),
    ),
  );
}
