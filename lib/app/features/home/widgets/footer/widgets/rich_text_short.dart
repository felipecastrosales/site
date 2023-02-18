import 'package:flutter/material.dart';

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
    var year = DateTimeUtils.getYear(
      DateTime.now(),
    );

    //   return SelectableText.rich( // bug
    // textAlign: textAlign,
    // TextSpan(
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        children: [
          TextSpan(
            text: '$year - ',
            style: AppTexts.phraseWhite,
          ),
          TextSpan(
            text: '@felipecastrosales',
            style: AppTexts.phrasePrimary,
          ),
          TextSpan(
            text: '.',
            style: AppTexts.phraseWhite,
          ),
        ],
      ),
    );
  }
}
