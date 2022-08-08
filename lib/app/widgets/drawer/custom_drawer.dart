import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/widgets/dividers/dividers.dart';

import 'drawer.dart';

class CustomDrawer extends StatelessWidget {
  final PageController pageController;
  const CustomDrawer(
    this.pageController, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.horizontal(
        right: Radius.circular(50),
      ),
      child: Drawer(
        backgroundColor: AppColors.background,
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const CustomDrawerHeader(),
              const CustomDivider(height: .5, color: AppColors.primaryDark),
              DrawerItems(pageController: pageController),
              const Spacer(),
              const DrawerFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
