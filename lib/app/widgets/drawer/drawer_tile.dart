import 'package:flutter/material.dart';

import 'package:site/app/core/tokens/tokens.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    super.key,
    required this.title,
    required this.leading,
    required this.page,
    required this.controller,
  });

  final String title;
  final IconData leading;
  final int page;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.background,
      child: InkWell(
        onTap: () {
          controller.animateToPage(
            page,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: ListTile(
            title: Transform.translate(
              offset: const Offset(-12, 0),
              child: SelectableText(
                title,
                style: AppTextStyles.socialTitle,
              ),
            ),
            leading: Icon(
              leading,
              color: AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
