import 'package:flutter/material.dart';

import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/core/responsive/breakpoints.dart';
import 'package:site/app/utils/context_ext.dart';
import 'package:site/app/utils/utils.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';

import 'widgets/phrase.dart';

class PresentationMobile extends StatelessWidget {
  const PresentationMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: ImageAssetUtil(
              AppAssets.presentationGradientImage,
              width: context.width,
              height: context.height,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: ImageAssetUtil(
            AppAssets.presentationGradientBottom,
            width: context.width,
            height: context.height,
          ),
        ),
        Positioned(
          bottom: 0,
          child: ImageAssetUtil(
            AppAssets.presentationTextureBackground,
            width: context.width,
            height: context.height,
          ),
        ),
        Column(
          children: [
            MobileBody(
              children: [
                const SectionTitle(
                  paddingTop: 50,
                  paddingBottom: 16,
                  title: 'Olá, sou Felipe Sales',
                ),
                LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth <
                        Breakpoints.presentationMobileSubtitle) {
                      return const SizedBox.shrink();
                    } else {
                      return const SectionSubtitle(
                        paddingTop: 8,
                        paddingBottom: 8,
                        title: '> Desenvolvedor de Aplicativos',
                      );
                    }
                  },
                ),
                const GradientDivider(),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 24),
                  child: const ImageAssetUtil(
                    AppAssets.presentationMobile,
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: SectionText(
                      paddingTop: 24,
                      paddingBottom: 8,
                      isCentered: true,
                      title:
                          'Desenvolvedor focado em aplicar seus conhecimentos em prática e construir coisas incríveis através de linhas de código.',
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
            const PresentationDivider(),
          ],
        ),
      ],
    );
  }
}
