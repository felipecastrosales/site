import 'package:flutter/material.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:site/app/core/platform_info/widgets/platform_info_widget.dart';

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
            children: [
              const CustomDrawerHeader(),
              const CustomDivider(.5, AppColors.primaryDark),
              Expanded(
                child: DrawerItems(itemScrollController),
              ),
              const DrawerFooter(),
              const Align(
                alignment: Alignment.centerLeft,
                child: PlatformInfoWidget(
                  padding: EdgeInsets.only(
                    bottom: 20,
                    left: 20,
                  ),
                ),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
