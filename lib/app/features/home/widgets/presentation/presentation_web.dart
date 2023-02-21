import 'package:flutter/material.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/features/home/widgets/presentation/widgets/phrase.dart';
import 'package:site/app/utils/extensions/media_query_ext.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';
import 'package:site/app/widgets/widgets.dart';

class PresentationWeb extends StatelessWidget {
  const PresentationWeb(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned.fill(
          child: Align(
            alignment: Alignment.centerRight,
            child: ImageAssetWidget(
              AppAssets.presentationGradientWeb,
            ),
          ),
        ),
        Positioned.fill(
          child: ImageAssetWidget(
            AppAssets.presentationTextureLarge,
            height: context.height,
            width: context.width,
          ),
        ),
        Column(
          children: [
            WebBody(
              children: [
                const SectionTitle(
                  isWeb: true,
                  paddingTop: 50,
                  paddingBottom: 12,
                  title: AppTexts.hiIAmFelipeSales,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SectionSubtitle(
                            paddingTop: 0,
                            paddingBottom: 32,
                            title: AppTexts.appsDeveloper,
                          ),
                          SizedBox(
                            width: 400,
                            child: GradientDivider(),
                          ),
                          SizedBox(
                            child: Center(
                              child: SectionText(
                                paddingTop: 32,
                                paddingBottom: 32,
                                title: AppTexts.developerFocused,
                              ),
                            ),
                          ),
                          Phrase(),
                        ],
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 24),
                        child: const ImageAssetWidget(
                          AppAssets.presentationWeb,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
              ],
            ),
            PresentationDivider(itemScrollController),
          ],
        ),
      ],
    );
  }
}
