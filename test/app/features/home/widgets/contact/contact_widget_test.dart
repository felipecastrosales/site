import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/contact/contact_mobile.dart';
import 'package:site/app/features/home/widgets/contact/contact_web.dart';
import 'package:site/app/features/home/widgets/contact/contact_widget.dart';
import 'package:site/app/features/home/widgets/contact/controller/contact_controller.dart';

import '../../../../../flutter_test_config.dart';
import '../../../../../utils/utils.dart';

void main() {
  late ContactController contactController;

  setUp(() {
    contactController = MockContactController();
  });

  testWidgets('Should renders Contact', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: ContactWidget(
        contactController: contactController,
      ),
    );

    final contactWidget = find.byType(ContactWidget);
    expect(contactWidget, findsOneWidget);
  });

  group('ContactWidget LayoutBuilder Should renders', () {
    final contactMobile = find.byType(ContactMobile);
    final contactWeb = find.byType(ContactWeb);

    testWidgets(
      'ContactMobile when constraints is less than Breakpoints.contact',
      (tester) async {
        final widthLargeSize =
            tester.binding.window.physicalSizeTestValue = const Size(200, 400);

        await appWidgetTest(
          tester: tester,
          widget: MediaQuery(
            data: MediaQueryData(size: widthLargeSize),
            child: ContactWidget(
              contactController: contactController,
            ),
          ),
        );

        expect(contactMobile, findsOneWidget);
        expect(contactWeb, findsNothing);

        addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
      },
    );

    testWidgets(
      'ContactWeb when constraints is greater than Breakpoints.contact',
      (tester) async {
        final widthLargeSize =
            tester.binding.window.physicalSizeTestValue = const Size(2000, 400);

        await appWidgetTest(
          tester: tester,
          widget: MediaQuery(
            data: MediaQueryData(size: widthLargeSize),
            child: ContactWidget(
              contactController: contactController,
            ),
          ),
        );

        expect(contactMobile, findsNothing);
        expect(contactWeb, findsOneWidget);

        addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
      },
    );
  });
}
