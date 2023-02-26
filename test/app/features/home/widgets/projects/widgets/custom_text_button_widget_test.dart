import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/projects/widgets/custom_text_button_widget.dart';

import '../../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders CustomTextButtonWidget', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const CustomTextButtonWidget(),
    );

    expect(
      find.byType(CustomTextButtonWidget),
      findsOneWidget,
    );
  });
}
