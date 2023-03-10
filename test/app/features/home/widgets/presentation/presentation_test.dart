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

      final presentationMobile = find.byType(PresentationMobile);
      expect(presentationMobile, findsOneWidget);

      final presentationWeb = find.byType(PresentationWeb);
      expect(presentationWeb, findsNothing);

      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    });

    testWidgets(
        'PresentationWeb when constraints is greater than Breakpoints.presentation',
        (tester) async {
      final widthLargeSize =
          tester.binding.window.physicalSizeTestValue = const Size(2000, 1000);

      await appWidgetTest(
        tester: tester,
        widget: MediaQuery(
          data: MediaQueryData(size: widthLargeSize),
          child: Presentation(ItemScrollController()),
        ),
      );

      final presentationMobile = find.byType(PresentationMobile);
      expect(presentationMobile, findsNothing);

      final presentationWeb = find.byType(PresentationWeb);
      expect(presentationWeb, findsOneWidget);

      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    });
  });
}
