import 'package:flutter_test/flutter_test.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/widgets/drawer/drawer.dart';

import '../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders CustomDrawer', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: CustomDrawer(
        ItemScrollController(),
      ),
    );

    expect(
      find.byType(CustomDrawer),
      findsOneWidget,
    );
  });
}
