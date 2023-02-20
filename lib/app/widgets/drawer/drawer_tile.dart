import 'package:flutter/material.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/core/mixins/mixins.dart';
import 'package:site/app/core/tokens/tokens.dart';

class DrawerTile extends StatelessWidget with ScrollToMixin {
  const DrawerTile({
    super.key,
    required this.title,
    required this.leading,
    required this.index,
    required this.itemScrollController,
  });

  final String title;
  final IconData leading;
  final int index;
  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.background,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        splashColor: AppColors.blackOpacity,
        onTap: () {
          scrollTo(index, itemScrollController);
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: ListTile(
            title: Transform.translate(
              offset: const Offset(-12, 0),
              child: Text(
                title,
                style: AppTextStyles.socialTitle,
              ),
            ),
            leading: Icon(
              leading,
              size: 24,
              color: AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
