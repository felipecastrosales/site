import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/home/components/footer/footer.dart';

void main() {
  testWidgets('Should renders FooterWeb', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(FooterWeb),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: FooterWeb(),
    ),
  );
}
