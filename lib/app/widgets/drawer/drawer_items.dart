import 'package:flutter/material.dart';

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
          title: 'Home',
          leading: Icons.home,
          page: 1,
          controller: pageController,
        ),
        DrawerTile(
          title: 'Projetos',
          leading: Icons.tips_and_updates,
          page: 2,
          controller: pageController,
        ),
        DrawerTile(
          title: 'Experiência',
          leading: Icons.receipt_long,
          page: 3,
          controller: pageController,
        ),
        DrawerTile(
          title: 'Social Links',
          leading: Icons.link,
          page: 4,
          controller: pageController,
        ),
        DrawerTile(
          title: 'Contato',
          leading: Icons.contact_mail,
          page: 5,
          controller: pageController,
        ),
      ],
    );
  }
}
