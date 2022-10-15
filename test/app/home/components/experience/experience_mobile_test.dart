import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/home/components/experience/experience_mobile.dart';

void main() {
  testWidgets('Should renders ExperienceMobile', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(ExperienceMobile),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: ExperienceMobile(),
    ),
  );
}
