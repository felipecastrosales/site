import 'package:flutter/material.dart';

import 'package:site/app/core/extensions/extensions.dart';
import 'package:site/app/core/l10n/l10n.dart';
import 'package:site/app/core/mixins/mixins.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/features/home/widgets/projects/widgets/widgets.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/gradients/gradients.dart';
import 'package:site/app/widgets/images/images.dart';
import 'package:site/app/widgets/section/section.dart';

class ProjectsWeb extends StatelessWidget with ResponsivePositionMixin {
  const ProjectsWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned.fill(
              bottom: 4,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ImageAssetWidget(
                  AppAssets.abstractLarge,
                  alignment: Alignment.topCenter,
                  height: 305.7,
                  width: context.width,
                ),
              ),
            ),
            Positioned.fill(
              child: GradientWidget(
                opacity: 0.8,
                radius: 0.75,
                width: context.width,
                height: context.height,
                alignment: Alignment(
                  -gradientExperienceAndProjectsSectionWidthAlignment(
                    constraints.maxWidth,
                  ),
                  0.18,
                ),
              ),
            ),
            Column(
              children: [
                WebBody(
                  children: [
                    SectionTitle(
                      isWeb: true,
                      paddingTop: 50,
                      paddingBottom: 8,
                      title: AppTexts.get(context).projects,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 400,
                                child: SectionText(
                                  paddingTop: 42,
                                  paddingBottom: 36,
                                  title: AppTexts.get(context)
                                      .projectAreInMyGitHub,
                                ),
                              ),
                              const AppTextButtonWidget(),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: const ImageAssetWidget(
                                  AppAssets.mockup,
                                  width: 460,
                                ),
                              ),
                              const SizedBox(height: 60),
                            ],
                          ),
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
