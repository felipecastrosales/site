import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/social/widgets/widgets.dart';

import '../../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders CardGlassmorphism', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const CardGlassmorphism(
        child: SizedBox(),
      ),
    );

    expect(
      find.byType(CardGlassmorphism),
      findsOneWidget,
    );
  });
}
