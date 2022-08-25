import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

class TitleDescriptionShort extends StatelessWidget {
  const TitleDescriptionShort(
    this.title,
    this.description, {
    Key? key,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '• $title',
          style: AppTexts.experienceTitle,
        ),
        Text(
          '    - $description',
          style: AppTexts.experienceDescription,
        ),
        const SizedBox(height: 2),
      ],
    );
  }
}
