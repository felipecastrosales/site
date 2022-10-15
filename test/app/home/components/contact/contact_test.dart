import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/home/components/contact/contact.dart';

void main() {
  testWidgets('Should renders Contact', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(Contact),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: Contact(),
    ),
  );
}

Widget contactForm() {
  return const Form(
    child: SizedBox(),
  );
}