import 'package:flutter_test/flutter_test.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/widgets/drawer/drawer.dart';

import '../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders DrawerItems', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: DrawerItems(
        ItemScrollController(),
      ),
    );

    expect(
      find.byType(DrawerItems),
      findsOneWidget,
    );
  });
}
