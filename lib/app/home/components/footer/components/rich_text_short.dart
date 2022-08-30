import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

class RichTextShort extends StatelessWidget {
  const RichTextShort({
    Key? key,
    required this.textAlign,
  }) : super(key: key);

  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        children: [
          TextSpan(
            text: '2022 - ',
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
