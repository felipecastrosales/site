import 'package:flutter/material.dart';

import 'package:site/app/core/tokens/tokens.dart';
import 'package:site/app/widgets/dividers/dividers.dart';

import 'drawer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer(
    this.pageController, {
    super.key,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.horizontal(
        right: Radius.circular(50),
      ),
      child: Drawer(
        backgroundColor: AppColors.background,
        surfaceTintColor: AppColors.transparent,
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const CustomDrawerHeader(),
              const CustomDivider(.5, AppColors.primaryDark),
              DrawerItems(pageController: pageController),
              const Spacer(),
              const DrawerFooter(),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
