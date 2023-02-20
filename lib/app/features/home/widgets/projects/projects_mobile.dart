import 'package:flutter/material.dart';

import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/features/home/widgets/projects/widgets/custom_text_button_widget.dart';
import 'package:site/app/utils/context_ext.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';
import 'package:site/app/widgets/widgets.dart';

class ProjectsMobile extends StatelessWidget {
  const ProjectsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 4,
              child: Stack(
                children: [
                  ImageAssetWidget(
                    AppAssets.abstractFit,
                    width: context.width,
                  ),
                ],
              ),
            ),
            MobileBody(
              children: [
                const SectionTitle(
                  paddingTop: 50,
                  paddingBottom: 20,
                  title: AppTexts.projects,
                ),
                const Center(
                  child: SectionText(
                    paddingTop: 0,
                    paddingBottom: 24,
                    title: AppTexts.projectAreInMyGitHub,
                  ),
                ),
                const CustomTextButtonWidget(),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 24, bottom: 16),
                  child: const ImageAssetWidget(
                    AppAssets.mockup,
                    width: 324,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SectionDivider(),
      ],
    );
  }
}
