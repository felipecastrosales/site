import 'package:flutter/material.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/utils/context_ext.dart';
import 'package:site/app/utils/utils.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';

import 'widgets/custom_text_button_widget.dart';

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
            child: ImageAssetUtil(
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
                  title: 'Projetos',
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
                              title:
                                  'Grande parte dos projetos que já desenvolvi estão no meu GitHub de forma completamente gratuita.',
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
                            child: const ImageAssetUtil(
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
