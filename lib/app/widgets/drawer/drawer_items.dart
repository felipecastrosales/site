import 'package:flutter/material.dart';

import 'drawer_tile.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({
    Key? key,
    required this.pageController,
  }) : super(key: key);
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerTile(
          title: 'Home',
          leading: Icons.home,
          page: 0,
          controller: pageController,
        ),
        DrawerTile(
          title: 'Projects',
          leading: Icons.tips_and_updates,
          page: 1,
          controller: pageController,
        ),
        DrawerTile(
          title: 'Experience',
          leading: Icons.receipt_long,
          page: 2,
          controller: pageController,
        ),
        DrawerTile(
          title: 'Social Links',
          leading: Icons.link,
          page: 3,
          controller: pageController,
        ),
        DrawerTile(
          title: 'Contact Me',
          leading: Icons.contact_mail,
          page: 4,
          controller: pageController,
        ),
      ],
    );
  }
}
