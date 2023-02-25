import 'package:flutter/material.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/core/responsive/responsive.dart';
import 'package:site/app/widgets/appbar/app_bar.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.appBar
            ? const MobileAppBar()
            : WebAppBar(itemScrollController);
      },
    );
  }
}
