import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/widgets/body/body.dart';

import '../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders MobileBody', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const MobileBody(
        children: [
          SizedBox(),
        ],
      ),
    );

    expect(
      find.byType(MobileBody),
      findsOneWidget,
    );

    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Padding &&
            widget.padding == const EdgeInsets.symmetric(horizontal: 16) &&
            widget.child is Column,
      ),
      findsOneWidget,
    );

    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Column &&
            widget.mainAxisAlignment == MainAxisAlignment.start &&
            widget.crossAxisAlignment == CrossAxisAlignment.start &&
            widget.children.isNotEmpty,
      ),
      findsOneWidget,
    );
  });
}
