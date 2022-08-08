import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MobileBody(
          children: [
            const SectionTitle(
              paddingTop: 50,
              paddingBottom: 20,
              title: 'Experience',
            ),
            const SectionText(
              paddingTop: 0,
              paddingBottom: 24,
              title: '''
                  • Rocketseat | 2021 - Currently
                    — Developer Instructor
                  • Udemy | 2020 - 2021
                    — Teaching Assistent
                  • Personal Projects | 2020 - Ever
                    — Payng price everyday
                ''',
            ),
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
        const SectionDivider(),
      ],
    );
  }
}
