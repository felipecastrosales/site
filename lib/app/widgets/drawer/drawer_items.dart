import 'package:flutter/material.dart';
import 'package:site/app/core/shared/shared.dart';

import 'drawer.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerTile(
          title: AppTexts.home,
          leading: Icons.home,
          page: 1,
          controller: pageController,
        ),
        DrawerTile(
          title: AppTexts.projects,
          leading: Icons.tips_and_updates,
          page: 2,
          controller: pageController,
        ),
        DrawerTile(
          title: AppTexts.experience,
          leading: Icons.receipt_long,
          page: 3,
          controller: pageController,
        ),
        DrawerTile(
          title: AppTexts.socialLinks,
          leading: Icons.link,
          page: 4,
          controller: pageController,
        ),
        DrawerTile(
          title: AppTexts.contact,
          leading: Icons.contact_mail,
          page: 5,
          controller: pageController,
        ),
      ],
    );
  }
}
