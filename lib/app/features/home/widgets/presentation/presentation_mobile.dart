import 'package:flutter/material.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/core/extensions/media_query_ext.dart';
import 'package:site/app/core/l10n/l10n.dart';
import 'package:site/app/core/responsive/responsive.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/features/home/widgets/presentation/widgets/phrase.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';
import 'package:site/app/widgets/widgets.dart';

class PresentationMobile extends StatelessWidget {
  const PresentationMobile(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: GradientWidget(
            radius: 0.9,
            height: context.height,
            width: context.width,
            alignment: Alignment.center,
          ),
        ),
        Positioned.fill(
          child: GradientWidget(
            opacity: 0.75,
            radius: 1,
            height: context.height,
            width: context.width,
            alignment: Alignment.bottomCenter,
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
        SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              MobileBody(
                children: [
                  SectionTitle(
                    paddingTop: 50,
                    paddingBottom: 16,
                    title: AppTexts.get(context).hiIAmFelipeSales,
                  ),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return constraints.maxWidth <
                              Breakpoints.presentationMobileSubtitle
                          ? const SizedBox.shrink()
                          : SectionSubtitle(
                              paddingTop: 8,
                              paddingBottom: 8,
                              title:
                                  AppTexts.get(context).applicationsDeveloper,
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
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: SectionText(
                        paddingTop: 24,
                        paddingBottom: 8,
                        isCentered: true,
                        title: AppTexts.get(context).developerFocused,
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
              PresentationDivider(itemScrollController),
            ],
          ),
        ),
      ],
    );
  }
}
