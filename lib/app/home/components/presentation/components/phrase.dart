import 'package:flutter/material.dart';

import 'package:site/app/core/tokens/tokens.dart';

class Phrase extends StatelessWidget {
  const Phrase({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SelectableText('Deep Code. Way Code.', style: AppTexts.phrase),
        SelectableText.rich(
          TextSpan(
            children: [
              TextSpan(text: 'Deep ', style: AppTexts.phrasePrimary),
              TextSpan(text: 'Code. ', style: AppTexts.phraseWhite),
              TextSpan(text: 'Way ', style: AppTexts.phrasePrimary),
              TextSpan(text: 'Code.', style: AppTexts.phraseWhite),
            ],
          ),
        ),
      ],
    );
  }
}
