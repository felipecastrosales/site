import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

import 'components/app_bar_divider.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppTexts.appBar('Home'),
          const AppBarDivider(),
          AppTexts.appBar('Projects'),
          const AppBarDivider(),
          AppTexts.appBar('Experience'),
          const AppBarDivider(),
          AppTexts.appBar('Social Links'),
          const AppBarDivider(),
          AppTexts.appBar('Contact Me'),
        ],
      ),
    );
  }
}
