import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

class WebAppBarTitle extends StatelessWidget {
  const WebAppBarTitle(
    this.title,
    this.page, {
    super.key,
  });

  final String title;
  final int page;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          splashColor: AppColors.primary,
          overlayColor: MaterialStateProperty.all(
            AppColors.primary.withOpacity(0.16),
          ),
          onTap: () {
            // controller.animateToPage(
            //   page,
            //   duration: const Duration(milliseconds: 1000),
            //   curve: Curves.ease,
            // );
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: AppTexts.appBar(title),
          ),
        ),
      ),
    );
  }
}
