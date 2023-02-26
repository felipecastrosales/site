import 'package:flutter/material.dart';

import 'package:site/app/core/extensions/media_query_ext.dart';
import 'package:site/app/core/l10n/l10n.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/features/home/widgets/projects/widgets/custom_text_button_widget.dart';
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
            Positioned.fill(
              child: GradientWidget(
                radius: 0.6,
                width: context.width,
                height: context.height,
                alignment: const Alignment(0.0, 0.5),
              ),
            ),
            MobileBody(
              children: [
                SectionTitle(
                  paddingTop: 50,
                  paddingBottom: 20,
                  title: AppTexts.get(context).projects,
                ),
                Center(
                  child: SectionText(
                    paddingTop: 0,
                    paddingBottom: 24,
                    title: AppTexts.get(context).projectAreInMyGitHub,
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
