import 'package:flutter/material.dart';

import 'package:site/app/core/l10n/l10n.dart';
import 'package:site/app/core/tokens/tokens.dart';

class Phrase extends StatelessWidget {
  const Phrase({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SelectableText(
          AppTexts.get(context).deepCodeWayCode,
          style: AppTextStyles.phrase,
        ),
        SelectableText.rich(
          TextSpan(
            children: [
              TextSpan(
                text: AppTexts.get(context).deep,
                style: AppTextStyles.phrasePrimary,
              ),
              TextSpan(
                text: AppTexts.get(context).code,
                style: AppTextStyles.phraseWhite,
              ),
              TextSpan(
                text: AppTexts.get(context).way,
                style: AppTextStyles.phrasePrimary,
              ),
              TextSpan(
                text: AppTexts.get(context).code,
                style: AppTextStyles.phraseWhite,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
