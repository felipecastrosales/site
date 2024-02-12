import 'package:flutter/material.dart';

import 'package:site/app/core/l10n/l10n.dart';
import 'package:site/app/core/platform_info/widgets/platform_info_widget.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/core/tokens/tokens.dart';
import 'package:site/app/features/home/widgets/footer/widgets/widgets.dart';
import 'package:site/app/widgets/body/body.dart';

class FooterWeb extends StatelessWidget {
  const FooterWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      color: AppColors.black,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: WebBody(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const RichTextShort(
                      textAlign: TextAlign.start,
                    ),
                    SelectableText(
                      AppTexts.get(context).flutterProjectOpenSource,
                      style: AppTextStyles.phraseWhite,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextWithLink(
                    text: AppTexts.get(context).seeInGitHub,
                    link: AppUrls.gitHubProject,
                  ),
                  TextWithLink(
                    text: AppTexts.get(context).seeInFigma,
                    link: AppUrls.figmaProject,
                  ),
                ],
              ),
            ],
          ),
          const PlatformInfoWidget(
            padding: EdgeInsets.all(0),
          ),
        ],
      ),
    );
  }
}
