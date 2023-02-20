import 'package:flutter/material.dart';

import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/features/home/widgets/experience/widgets/widgets.dart';

class SectionExperienceTexts extends StatelessWidget {
  const SectionExperienceTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TitleDescriptionShort(
          title: AppTexts.workSuaMusica,
          description: AppTexts.flutterDeveloper,
        ),
        TitleDescriptionShort(
          title: AppTexts.workRocketseat,
          description: AppTexts.developerInstructor,
        ),
        TitleDescriptionShort(
          title: AppTexts.workUdemy,
          description: AppTexts.teachingAssistent,
        ),
        TitleDescriptionShort(
          title: AppTexts.workPersonalProjects,
          description: AppTexts.payngPriceEveryday,
        ),
      ],
    );
  }
}
