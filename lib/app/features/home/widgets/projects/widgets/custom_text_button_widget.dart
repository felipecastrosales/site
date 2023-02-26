import 'package:flutter/material.dart';

import 'package:site/app/core/l10n/l10n.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/utils/utils.dart';
import 'package:site/app/widgets/custom_text_button.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      text: AppTexts.get(context).seeProjectsUpper,
      onPressed: () => LaunchUrls.launchURL(AppUrls.gitHub),
    );
  }
}
