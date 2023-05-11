import 'package:flutter/material.dart';

import 'package:site/app/core/extensions/extensions.dart';
import 'package:site/app/core/l10n/l10n.dart';
import 'package:site/app/core/mixins/mixins.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/features/home/widgets/experience/widgets/widgets.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/gradients/gradients.dart';
import 'package:site/app/widgets/images/images.dart';
import 'package:site/app/widgets/section/section.dart';

class ExperienceWeb extends StatelessWidget with ResponsivePositionMixin {
  const ExperienceWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned.fill(
              right: 0,
              child: Align(
                alignment: Alignment.centerRight,
                child: ImageAssetWidget(
                  AppAssets.abstractRight,
                  height: context.height,
                ),
              ),
            ),
            Positioned.fill(
              child: GradientWidget(
                radius: 0.5,
                width: context.width,
                height: context.height,
                alignment: Alignment(
                  gradientExperienceAndProjectsSectionWidthAlignment(
                    constraints.maxWidth,
                  ),
                  0.18,
                ),
              ),
            ),
            Positioned.fill(
              child: ImageAssetWidget(
                AppAssets.presentationTextureLarge,
                alignment: Alignment.topCenter,
                height: context.height,
                width: context.width,
              ),
            ),
            Column(
              children: [
                WebBody(
                  children: [
                    SectionTitle(
                      isWeb: true,
                      paddingTop: 50,
                      paddingBottom: 20,
                      title: AppLocalizations.of(context)!.experience,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                  top: 24,
                                  left: 40,
                                ),
                                child: const ImageAssetWidget(
                                  AppAssets.champ,
                                  width: 300,
                                ),
                              ),
                              const SizedBox(height: 87),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SectionExperienceTexts(),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SectionDivider(),
              ],
            ),
          ],
        );
      },
    );
  }
}
