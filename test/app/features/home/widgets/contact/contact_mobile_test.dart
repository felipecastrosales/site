import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/features/home/widgets/contact/contact_mobile.dart';

void main() {
  testWidgets('Should renders ContactMobile', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(ContactMobile),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: ContactMobile(
        SizedBox(),
      ),
    ),
  );
}
