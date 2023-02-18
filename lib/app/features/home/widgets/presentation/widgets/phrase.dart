import 'package:flutter/material.dart';

import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/core/tokens/tokens.dart';

class Phrase extends StatelessWidget {
  const Phrase({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SelectableText(
          AppTexts.deepCodeWayCode,
          style: AppTextStyles.phrase,
        ),
        SelectableText.rich(
          TextSpan(
            children: [
              TextSpan(
                text: AppTexts.deep,
                style: AppTextStyles.phrasePrimary,
              ),
              TextSpan(
                text: AppTexts.code,
                style: AppTextStyles.phraseWhite,
              ),
              TextSpan(
                text: AppTexts.way,
                style: AppTextStyles.phrasePrimary,
              ),
              TextSpan(
                text: AppTexts.code,
                style: AppTextStyles.phraseWhite,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
