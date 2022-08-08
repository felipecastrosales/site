import 'package:flutter/material.dart';
import 'package:site/app/core/app_customs/app_customs.dart';

import 'package:site/app/widgets/body/body.dart';
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
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                decoration: BoxDecoration(
                  gradient: AppGradients.divider,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text('VER PROJETOS', style: AppTexts.seeProjects),
              ),
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
