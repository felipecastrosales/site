import 'package:flutter/material.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/utils/context_ext.dart';
import 'package:site/app/utils/utils.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';

import 'widgets/phrase.dart';

class PresentationWeb extends StatelessWidget {
  const PresentationWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned.fill(
          child: Align(
            alignment: Alignment.centerRight,
            child: ImageAssetUtil(
              AppAssets.presentationGradientWeb,
            ),
          ),
        ),
        Positioned.fill(
          child: ImageAssetUtil(
            AppAssets.presentationTextureLarge,
            height: context.height,
            width: context.width,
          ),
        ),
        Column(
          children: [
            WebBody(
              children: [
                const SectionTitle(
                  isWeb: true,
                  paddingTop: 50,
                  paddingBottom: 12,
                  title: 'Olá, sou Felipe Sales',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SectionSubtitle(
                            paddingTop: 0,
                            paddingBottom: 32,
                            title: '> Desenvolvedor de Apps',
                          ),
                          SizedBox(
                            width: 400,
                            child: GradientDivider(),
                          ),
                          SizedBox(
                            child: Center(
                              child: SectionText(
                                paddingTop: 32,
                                paddingBottom: 32,
                                title:
                                    'Desenvolvedor focado em aplicar seus conhecimentos em prática e construir coisas incríveis através de linhas de código.',
                              ),
                            ),
                          ),
                          Phrase(),
                        ],
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 24),
                        child: const ImageAssetUtil(
                          AppAssets.presentationWeb,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
              ],
            ),
            const PresentationDivider(),
          ],
        ),
      ],
    );
  }
}
