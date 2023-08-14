import 'package:flutter/material.dart';

import 'package:site/app/core/l10n/l10n.dart';
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
            text: '$year${AppTexts.get(context).hyphen}',
            style: AppTextStyles.phraseWhite,
          ),
          TextSpan(
            text: AppTexts.get(context).username,
            style: AppTextStyles.phrasePrimary,
          ),
          TextSpan(
            text: AppTexts.get(context).dot,
            style: AppTextStyles.phraseWhite,
          ),
        ],
      ),
    );
  }
}
