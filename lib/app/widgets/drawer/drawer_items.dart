import 'package:flutter/material.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/widgets/drawer/drawer.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerTile(
          title: AppTexts.home,
          leading: Icons.home,
          index: 0,
          itemScrollController: itemScrollController,
        ),
        DrawerTile(
          title: AppTexts.projects,
          leading: Icons.tips_and_updates,
          index: 1,
          itemScrollController: itemScrollController,
        ),
        DrawerTile(
          title: AppTexts.experience,
          leading: Icons.receipt_long,
          index: 2,
          itemScrollController: itemScrollController,
        ),
        DrawerTile(
          title: AppTexts.socialLinks,
          leading: Icons.link,
          index: 3,
          itemScrollController: itemScrollController,
        ),
        DrawerTile(
          title: AppTexts.contact,
          leading: Icons.contact_mail,
          index: 4,
          itemScrollController: itemScrollController,
        ),
      ],
    );
  }
}
