import 'package:flutter/material.dart';
import 'package:site/app/core/shared/shared.dart';

import 'widgets/widgets.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          WebAppBarTitle(
            AppTexts.home,
            0,
          ),
          AppBarDivider(),
          WebAppBarTitle(
            AppTexts.projects,
            1,
          ),
          AppBarDivider(),
          WebAppBarTitle(
            AppTexts.experience,
            2,
          ),
          AppBarDivider(),
          WebAppBarTitle(
            AppTexts.socialLinks,
            3,
          ),
          AppBarDivider(),
          WebAppBarTitle(
            AppTexts.contact,
            4,
          ),
        ],
      ),
    );
  }
}
