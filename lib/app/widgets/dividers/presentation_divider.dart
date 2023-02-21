import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/core/mixins/mixins.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/core/tokens/tokens.dart';
import 'package:site/app/widgets/dividers/dividers.dart';

class PresentationDivider extends StatelessWidget with ScrollToMixin {
  const PresentationDivider(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Expanded(
          child: CustomDivider(
            2,
            AppColors.primary,
            margin: EdgeInsets.zero,
          ),
        ),
        GestureDetector(
          onTap: () => scrollTo(1, itemScrollController),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Lottie.asset(
              AppAssets.mouse,
              height: 50,
            ),
          ),
        ),
        const Expanded(
          child: CustomDivider(
            2,
            AppColors.primary,
            margin: EdgeInsets.zero,
          ),
        ),
      ],
    );
  }
}
