import 'package:flutter/material.dart';

import 'package:site/app/core/l10n/l10n.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/utils/utils.dart';
import 'package:site/app/widgets/buttons/buttons.dart';

class AppTextButtonWidget extends StatelessWidget {
  const AppTextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      text: AppTexts.get(context).seeProjectsUpper,
      onPressed: () => LaunchUrls().launchURL(AppUrls.gitHub),
    );
  }
}
