import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';

import 'components/components.dart';

class ExperienceMobile extends StatelessWidget {
  const ExperienceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              top: -25,
              right: 0,
              child: Image.asset(
                AppImages.abstractRight,
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  AppImages.champGradient,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  width: MediaQuery.of(context).size.width,
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
                  child: Image.asset(
                    AppImages.champ,
                    filterQuality: FilterQuality.high,
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