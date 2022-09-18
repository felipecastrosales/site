import 'package:flutter/material.dart';
import 'package:site/app/core/app_customs/app_customs.dart';

import 'components/gradient_text.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    this.isWeb = false,
    required this.title,
    required this.paddingTop,
    required this.paddingBottom,
  });

  final bool isWeb;
  final String title;
  final double paddingTop;
  final double paddingBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
      child: GradientText(
        title,
        colors: AppListColor.divider,
        style:
            isWeb ? AppTexts.presentationTitleWeb : AppTexts.presentationTitle,
      ),
    );
  }
}
