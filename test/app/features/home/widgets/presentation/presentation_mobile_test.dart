import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/features/home/widgets/presentation/presentation_mobile.dart';

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
    MaterialApp(
      home: PresentationMobile(
        ItemScrollController(),
      ),
    ),
  );
}
