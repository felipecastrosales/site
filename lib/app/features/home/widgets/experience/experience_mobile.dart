import 'package:flutter/material.dart';

import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/utils/context_ext.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';
import 'package:site/app/widgets/widgets.dart';

import 'widgets/widgets.dart';

class ExperienceMobile extends StatelessWidget {
  const ExperienceMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            const Positioned(
              top: -25,
              right: 0,
              child: ImageAssetWidget(
                AppAssets.abstractRight,
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: ImageAssetWidget(
                  AppAssets.champGradient,
                  width: context.width,
                  height: context.height,
                ),
              ),
            ),
            MobileBody(
              children: [
                const SectionTitle(
                  paddingTop: 50,
                  paddingBottom: 20,
                  title: AppTexts.experience,
                ),
                const SectionExperienceTexts(),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 24),
                  child: const ImageAssetWidget(
                    AppAssets.champ,
                    height: 185,
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ],
        ),
        const SectionDivider(),
      ],
    );
  }
}
