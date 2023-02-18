import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/features/home/widgets/footer/footer.dart';

void main() {
  testWidgets('Should renders CustomFooter', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(CustomFooter),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: CustomFooter(),
    ),
  );
}
