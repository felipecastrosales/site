import 'package:flutter/material.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:site/app/core/shared/app_keys.dart';

import 'package:site/app/core/responsive/responsive.dart';
import 'package:site/app/features/home/widgets/presentation/presentation_mobile.dart';
import 'package:site/app/features/home/widgets/presentation/presentation_web.dart';

class Presentation extends StatelessWidget {
  const Presentation(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      key: AppKeys.presentation,
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.presentation
            ? PresentationMobile(itemScrollController)
            : PresentationWeb(itemScrollController);
      },
    );
  }
}
