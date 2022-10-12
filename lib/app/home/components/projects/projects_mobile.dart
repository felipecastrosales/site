import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/utils/context_ext.dart';
import 'package:site/app/utils/utils.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';

import 'components/custom_text_button_widget.dart';

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
                  ImageAssetUtil(
                    AppImages.abstractFit,
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
                  title: 'Projetos',
                ),
                const Center(
                  child: SectionText(
                    paddingTop: 0,
                    paddingBottom: 24,
                    title:
                        'Grande parte dos projetos que já desenvolvi estão no meu GitHub de forma completamente gratuita.',
                  ),
                ),
                const CustomTextButtonWidget(),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 24, bottom: 16),
                  child: const ImageAssetUtil(
                    AppImages.mockup,
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
