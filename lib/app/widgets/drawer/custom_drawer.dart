import 'package:flutter/material.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/core/tokens/tokens.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/drawer/drawer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

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
              DrawerItems(itemScrollController),
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
