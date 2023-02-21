import 'package:flutter/material.dart';

import 'package:site/app/core/responsive/breakpoints.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/features/home/widgets/presentation/widgets/phrase.dart';
import 'package:site/app/utils/extensions/media_query_ext.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';
import 'package:site/app/widgets/widgets.dart';

class PresentationMobile extends StatelessWidget {
  const PresentationMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: ImageAssetWidget(
              AppAssets.presentationGradientImage,
              width: context.width,
              height: context.height,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: ImageAssetWidget(
            AppAssets.presentationGradientBottom,
            width: context.width,
            height: context.height,
          ),
        ),
        Positioned(
          bottom: 0,
          child: ImageAssetWidget(
            AppAssets.presentationTextureBackground,
            width: context.width,
            height: context.height,
          ),
        ),
        Column(
          children: [
            MobileBody(
              children: [
                const SectionTitle(
                  paddingTop: 50,
                  paddingBottom: 16,
                  title: AppTexts.hiIAmFelipeSales,
                ),
                LayoutBuilder(
                  builder: (context, constraints) {
                    return constraints.maxWidth <
                            Breakpoints.presentationMobileSubtitle
                        ? const SizedBox.shrink()
                        : const SectionSubtitle(
                            paddingTop: 8,
                            paddingBottom: 8,
                            title: AppTexts.applicationsDeveloper,
                          );
                  },
                ),
                const GradientDivider(),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 24),
                  child: const ImageAssetWidget(
                    AppAssets.presentationMobile,
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: SectionText(
                      paddingTop: 24,
                      paddingBottom: 8,
                      isCentered: true,
                      title: AppTexts.developerFocused,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 8, bottom: 35),
                  alignment: Alignment.center,
                  child: const Phrase(),
                ),
              ],
            ),
            const PresentationDivider(),
          ],
        ),
      ],
    );
  }
}
