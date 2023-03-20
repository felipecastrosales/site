import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/projects/widgets/widgets.dart';

import '../../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders AppTextButtonWidget', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const AppTextButtonWidget(),
    );

    expect(
      find.byType(AppTextButtonWidget),
      findsOneWidget,
    );
  });
}
