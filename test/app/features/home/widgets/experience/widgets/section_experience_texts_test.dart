import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/features/home/widgets/experience/widgets/widgets.dart';

void main() {
  testWidgets('Should renders SectionExperienceTexts', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(SectionExperienceTexts),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: SectionExperienceTexts(),
    ),
  );
}
