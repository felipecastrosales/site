import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/features/home/widgets/projects/widgets/custom_text_button_widget.dart';

void main() {
  testWidgets('Should renders CustomTextButtonWidget', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(CustomTextButtonWidget),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: CustomTextButtonWidget(),
    ),
  );
}
