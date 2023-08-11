import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/projects/widgets/widgets.dart';

import '../../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders AppTextButtonWidget', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const AppTextButtonWidget(),
    );

    final appTextButtonWidgetFinder = find.byType(AppTextButtonWidget);

    await tester.tap(appTextButtonWidgetFinder);
    await tester.pumpAndSettle();

    expect(appTextButtonWidgetFinder, findsOneWidget);
  });
}
