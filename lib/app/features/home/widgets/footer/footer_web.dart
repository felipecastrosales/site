import 'package:flutter/material.dart';

import 'package:site/app/core/tokens/tokens.dart';
import 'package:site/app/widgets/body/body.dart';

import 'widgets/widgets.dart';

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
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const RichTextShort(textAlign: TextAlign.start),
                    SelectableText(
                      'Um projeto Flutter OpenSource.',
                      style: AppTextStyles.phraseWhite,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  TextWithLink(
                    'Veja no GitHub.',
                    'github.com/felipecastrosales/site',
                  ),
                  TextWithLink(
                    'Veja no Figma.',
                    'figma.com/file/gG2B4ZopeGX2Wt0RTkAxkT/Minha-Identidade',
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
