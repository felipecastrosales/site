import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/features/home/widgets/presentation/presentation.dart';
import 'package:site/app/features/home/widgets/presentation/presentation_mobile.dart';
import 'package:site/app/features/home/widgets/presentation/presentation_web.dart';

import '../../../../../flutter_test_config.dart';

void main() {
  group('Presentation Widget Renders', () {
    testWidgets('Find Presentation', (tester) async {
      await appWidgetTest(
        tester: tester,
        widget: Presentation(ItemScrollController()),
      );

      final presentation = find.byType(Presentation);
      expect(presentation, findsOneWidget);
    });

    group('LayoutBuilder widget Should renders', () {
      final presentationMobile = find.byType(PresentationMobile);
      final presentationWeb = find.byType(PresentationWeb);

      testWidgets(
          'PresentationMobile when constraints is less than Breakpoints.presentation',
          (tester) async {
        final widthSmallSize =
            tester.binding.window.physicalSizeTestValue = const Size(400, 400);

        await appWidgetTest(
          tester: tester,
          widget: MediaQuery(
            data: MediaQueryData(size: widthSmallSize),
            child: Presentation(ItemScrollController()),
          ),
        );

        expect(presentationMobile, findsOneWidget);
        expect(presentationWeb, findsNothing);

        addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
      });

      testWidgets(
          'PresentationWeb when constraints is greater than Breakpoints.presentation',
          (tester) async {
        final widthLargeSize = tester.binding.window.physicalSizeTestValue =
            const Size(2000, 1000);

        await appWidgetTest(
          tester: tester,
          widget: MediaQuery(
            data: MediaQueryData(size: widthLargeSize),
            child: Presentation(ItemScrollController()),
          ),
        );

        expect(presentationMobile, findsNothing);
        expect(presentationWeb, findsOneWidget);

        addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
      });
    });
  });
}
