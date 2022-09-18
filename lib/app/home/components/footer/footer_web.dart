import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/utils/utils.dart';
import 'package:site/app/widgets/body/body.dart';

import 'components/rich_text_short.dart';

class FooterWeb extends StatelessWidget {
  const FooterWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: AppColors.black,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 4),
      child: WebBody(
        children: [
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                  InkWell(
                    onTap: () => launchURL('github.com/felipecastrosales/site'),
                    child: Text(
                      'Veja no GitHub.',
                      style: AppTexts.footerLink,
                    ),
                  ),
                  InkWell(
                    onTap: () => launchURL(
                      'figma.com/file/gG2B4ZopeGX2Wt0RTkAxkT/Minha-Identidade',
                    ),
                    child: Text(
                      'Veja no Figma.',
                      style: AppTexts.footerLink,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
