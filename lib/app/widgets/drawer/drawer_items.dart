import 'package:flutter/material.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/core/l10n/l10n.dart';
import 'package:site/app/widgets/drawer/drawer.dart';
import 'package:site/app/widgets/utils_widgets/utils_widgets.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return ColumnScrollable(
      children: [
        DrawerTile(
          title: AppTexts.get(context).home,
          leading: Icons.home,
          index: 0,
          itemScrollController: itemScrollController,
        ),
        DrawerTile(
          title: AppTexts.get(context).projects,
          leading: Icons.tips_and_updates,
          index: 1,
          itemScrollController: itemScrollController,
        ),
        DrawerTile(
          title: AppTexts.get(context).experience,
          leading: Icons.receipt_long,
          index: 2,
          itemScrollController: itemScrollController,
        ),
        DrawerTile(
          title: AppTexts.get(context).socialLinks,
          leading: Icons.link,
          index: 3,
          itemScrollController: itemScrollController,
        ),
        DrawerTile(
          title: AppTexts.get(context).contact,
          leading: Icons.contact_mail,
          index: 4,
          itemScrollController: itemScrollController,
        ),
      ],
    );
  }
}
