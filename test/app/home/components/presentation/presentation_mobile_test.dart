import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/home/components/presentation/presentation_mobile.dart';

void main() {
  testWidgets('Should Renders PresentationMobile', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(PresentationMobile),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: PresentationMobile(),
    ),
  );
}
