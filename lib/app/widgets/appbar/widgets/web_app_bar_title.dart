import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/core/tokens/tokens.dart';

class WebAppBarTitle extends StatelessWidget {
  const WebAppBarTitle({
    super.key,
    required this.index,
    required this.title,
    required this.itemScrollController,
  });

  final String title;
  final int index;
  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Material(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          splashColor: AppColors.primary,
          overlayColor: MaterialStateProperty.all(
            AppColors.primary.withOpacity(0.16),
          ),
          onTap: () {
            itemScrollController.scrollTo(
              index: index,
              alignment: 0,
              curve: Curves.easeInOutCubic,
              duration: const Duration(seconds: 2),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: AppTextStyles.appBar(title),
          ),
        ),
      ),
    );
  }
}
