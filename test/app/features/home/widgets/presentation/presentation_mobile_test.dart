import 'package:flutter_test/flutter_test.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/features/home/widgets/presentation/presentation_mobile.dart';

import '../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should Renders PresentationMobile', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: PresentationMobile(
        ItemScrollController(),
      ),
    );

    expect(
      find.byType(PresentationMobile),
      findsOneWidget,
    );
  });
}
