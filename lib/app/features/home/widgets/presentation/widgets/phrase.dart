import 'package:flutter/material.dart';

import 'package:site/app/core/tokens/tokens.dart';

class Phrase extends StatelessWidget {
  const Phrase({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SelectableText('Deep Code. Way Code.', style: AppTextStyles.phrase),
        SelectableText.rich(
          TextSpan(
            children: [
              TextSpan(text: 'Deep ', style: AppTextStyles.phrasePrimary),
              TextSpan(text: 'Code. ', style: AppTextStyles.phraseWhite),
              TextSpan(text: 'Way ', style: AppTextStyles.phrasePrimary),
              TextSpan(text: 'Code.', style: AppTextStyles.phraseWhite),
            ],
          ),
        ),
      ],
    );
  }
}
