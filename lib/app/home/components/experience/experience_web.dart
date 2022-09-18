import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';

import 'components/components.dart';

class ExperienceWeb extends StatelessWidget {
  const ExperienceWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          right: 0,
          child: Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              AppImages.abstractRight,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              height: MediaQuery.of(context).size.height,
            ),
          ),
        ),
        Positioned.fill(
          left: 10,
          bottom: 0,
          child: Image.asset(
            AppImages.champCircle,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            height: MediaQuery.of(context).size.height,
          ),
        ),
        Positioned.fill(
          child: Image.asset(
            AppImages.presentationTextureLarge,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            filterQuality: FilterQuality.high,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Column(
          children: [
            WebBody(
              children: [
                const SectionTitle(
                  isWeb: true,
                  paddingTop: 50,
                  paddingBottom: 20,
                  title: 'Experiência',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 24, left: 40),
                            child: Image.asset(
                              AppImages.champ,
                              filterQuality: FilterQuality.high,
                              width: 300,
                            ),
                          ),
                          const SizedBox(height: 87),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SectionCustomTexts(),
                      ],
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
