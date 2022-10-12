import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/utils/context_ext.dart';
import 'package:site/app/utils/utils.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';

import 'components/components.dart';

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
              child: ImageAssetUtil(
                AppImages.abstractRight,
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: ImageAssetUtil(
                  AppImages.champGradient,
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
                  title: 'Experiência',
                ),
                const SectionCustomTexts(),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 24),
                  child: const ImageAssetUtil(
                    AppImages.champ,
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
