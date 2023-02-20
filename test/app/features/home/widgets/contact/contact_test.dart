import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/contact/contact.dart';
import 'package:site/app/features/home/widgets/contact/controller/contact_controller.dart';

import '../../../../../utils/utils.dart';

void main() {
  late ContactController contactController;

  setUp(() {
    contactController = MockContactController();
  });

  testWidgets('Should renders Contact', (tester) async {
    await _createWidget(
      tester: tester,
      contactController: contactController,
    );

    expect(
      find.byType(Contact),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
  required ContactController contactController,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      home: Contact(
        contactController: contactController,
      ),
    ),
  );
}
