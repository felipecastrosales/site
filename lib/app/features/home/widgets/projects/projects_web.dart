import 'package:flutter/material.dart';

import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/features/home/widgets/projects/widgets/custom_text_button_widget.dart';
import 'package:site/app/utils/context_ext.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';
import 'package:site/app/widgets/widgets.dart';

class ProjectsWeb extends StatelessWidget {
  const ProjectsWeb({super.key});

  @override
  Widget build(BuildContext context) {
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
        Column(
          children: [
            WebBody(
              children: [
                const SectionTitle(
                  isWeb: true,
                  paddingTop: 50,
                  paddingBottom: 8,
                  title: AppTexts.projects,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            width: 400,
                            child: SectionText(
                              paddingTop: 42,
                              paddingBottom: 36,
                              title: AppTexts.projectAreInMyGitHub,
                            ),
                          ),
                          CustomTextButtonWidget(),
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
  }
}
