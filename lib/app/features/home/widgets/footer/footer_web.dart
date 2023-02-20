import 'package:flutter/material.dart';

import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/core/tokens/tokens.dart';
import 'package:site/app/features/home/widgets/footer/widgets/widgets.dart';
import 'package:site/app/widgets/body/body.dart';

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
                    const RichTextShort(
                      textAlign: TextAlign.start,
                    ),
                    SelectableText(
                      AppTexts.flutterProjectOpenSource,
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
                    text: AppTexts.seeInGitHub,
                    link: AppUrls.gitHubProject,
                  ),
                  TextWithLink(
                    text: AppTexts.seeInFigma,
                    link: AppUrls.figmaProject,
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
