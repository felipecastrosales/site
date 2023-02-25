import 'package:flutter/material.dart';
import 'package:site/app/core/shared/shared.dart';

import 'package:site/app/core/tokens/tokens.dart';
import 'package:site/app/utils/utils.dart';

class RichTextShort extends StatelessWidget {
  const RichTextShort({
    super.key,
    required this.textAlign,
  });

  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    var year = DateTimeUtils.getYear(DateTime.now());

    return SelectableText.rich(
      textAlign: textAlign,
      TextSpan(
        children: [
          TextSpan(
            text: '$year${AppTexts.hyphen}',
            style: AppTextStyles.phraseWhite,
          ),
          TextSpan(
            text: AppTexts.username,
            style: AppTextStyles.phrasePrimary,
          ),
          TextSpan(
            text: AppTexts.dot,
            style: AppTextStyles.phraseWhite,
          ),
        ],
      ),
    );
  }
}
