import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';
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
