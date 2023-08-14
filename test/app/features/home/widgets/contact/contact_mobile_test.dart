import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/contact/contact_mobile.dart';

import '../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders ContactMobile', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const ContactMobile(
        SizedBox(),
      ),
    );

    expect(
      find.byType(ContactMobile),
      findsOneWidget,
    );
  });
}
