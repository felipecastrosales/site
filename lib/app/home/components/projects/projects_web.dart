import 'package:flutter/material.dart';
import 'package:site/app/core/app_customs/app_customs.dart';

import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';

import 'components/custom_text_button.dart';

class ProjectsWeb extends StatelessWidget {
  const ProjectsWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 4,
              child: Stack(
                children: [
                  Image.asset(
                    AppImages.abstractLarge,
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    height: 305.7,
                    width: MediaQuery.of(context).size.width,
                  ),
                ],
              ),
            ),
            MobileBody(
              children: [
                const SectionTitle(
                  paddingTop: 50,
                  paddingBottom: 20,
                  title: 'Projetos',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            width: 400,
                            child: SectionText(
                              paddingTop: 30,
                              paddingBottom: 36,
                              title:
                                  'Grande parte dos projetos que já desenvolvi estão no meu GitHub de forma completamente gratuita.',
                            ),
                          ),
                          CustomTextButtonWidget(),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              AppImages.mockup,
                              filterQuality: FilterQuality.high,
                              width: 460,
                            ),
                          ),
                          const SizedBox(height: 50),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SectionDivider(),
      ],
    );
  }
}