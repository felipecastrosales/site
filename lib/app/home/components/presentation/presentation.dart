import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MobileBody(
          children: [
            const SectionTitle(
              paddingTop: 50,
              paddingBottom: 16,
              title: 'Hi I\'m Felipe Sales',
            ),
            const SectionSubtitle(
              paddingTop: 8,
              paddingBottom: 8,
              title: '> Mobile Developer',
            ),
            const GradientDivider(),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 24),
              child: Image.asset(
                AppImages.profileMobile,
                filterQuality: FilterQuality.high,
              ),
            ),
            const SectionText(
              paddingTop: 24,
              paddingBottom: 8,
              isCentered: true,
              title:
                  'Desenvolvedor focado em aplicar seus conhecimentos em prática e construir coisas incríveis através de linhas de código.',
            ),
            const Center(
              child: Text(
                'Deep Code. Way Code.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            // ),
            //   ),
            //   Expanded(
            //     child: Container(
            //       height: 2024,
            //       color: Colors.green,
            //     ),
            //   ),
            // ],
          ],
        ),
        const PresentationDivider(),
      ],
    );
  }
}
