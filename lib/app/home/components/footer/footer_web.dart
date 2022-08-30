import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

import 'components/rich_text_short.dart';

class FooterWeb extends StatelessWidget {
  const FooterWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(top: 4),
      color: AppColors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RichTextShort(textAlign: TextAlign.start),
              Text(
                'Um projeto Flutter OpenSource.',
                style: AppTexts.phraseWhite,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Veja no GitHub.',
                style: AppTexts.footerLink,
              ),
              Text(
                'Veja no Figma.',
                style: AppTexts.footerLink,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
