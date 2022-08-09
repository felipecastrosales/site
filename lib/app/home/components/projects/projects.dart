import 'package:flutter/material.dart';
import 'package:site/app/core/app_customs/app_customs.dart';

import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/custom_text_button.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MobileBody(
          children: [
            const SectionTitle(
              paddingTop: 50,
              paddingBottom: 20,
              title: 'Projects',
            ),
            const Center(
              child: SectionText(
                paddingTop: 0,
                paddingBottom: 24,
                title:
                    'Grande parte dos projetos que já desenvolvi estão no meu GitHub de forma completamente gratuita.',
              ),
            ),
            CustomTextButton(
              text: 'VER PROJETOS',
              onPressed: () {},
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 24),
              child: Image.asset(
                AppImages.mockup,
                filterQuality: FilterQuality.high,
                width: 324,
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
