import 'package:flutter/material.dart';

import 'package:site/app/core/tokens/tokens.dart';

class TitleDescriptionShort extends StatelessWidget {
  const TitleDescriptionShort(
    this.title,
    this.description, {
    super.key,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          '• $title',
          style: AppTexts.experienceTitle,
        ),
        const SizedBox(height: 8),
        SelectableText(
          '    — $description',
          style: AppTexts.experienceDescription,
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
