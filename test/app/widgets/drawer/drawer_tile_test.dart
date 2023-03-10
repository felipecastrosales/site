import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/widgets/drawer/drawer.dart';

import '../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders DrawerTile', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: DrawerTile(
        title: 'title',
        leading: Icons.local_fire_department,
        index: 0,
        itemScrollController: ItemScrollController(),
      ),
    );

    final drawerTile = find.byType(DrawerTile);
    expect(drawerTile, findsOneWidget);
  });
}
