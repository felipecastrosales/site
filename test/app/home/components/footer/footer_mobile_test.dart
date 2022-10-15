import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/home/components/footer/footer.dart';

void main() {
  testWidgets('Should renders FooterMobile', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(FooterMobile),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: FooterMobile(),
    ),
  );
}
