import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';

import 'components/phrase.dart';

class PresentationMobile extends StatelessWidget {
  const PresentationMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              AppImages.presentationGradientImage,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image.asset(
            AppImages.presentationGradientBottom,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image.asset(
            AppImages.presentationTextureBackground,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            width: MediaQuery.of(context).size.width,
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
                const SectionSubtitle(
                  paddingTop: 8,
                  paddingBottom: 8,
                  title: '> Desenvolvedor de Aplicativos',
                ),
                const GradientDivider(),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 24),
                  child: Image.asset(
                    AppImages.presentationMobile,
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
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
