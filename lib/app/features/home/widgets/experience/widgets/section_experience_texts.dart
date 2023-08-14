import 'package:flutter/material.dart';

import 'package:site/app/core/l10n/l10n.dart';
import 'package:site/app/features/home/widgets/experience/widgets/widgets.dart';

class SectionExperienceTexts extends StatelessWidget {
  const SectionExperienceTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleDescriptionShort(
          title: AppTexts.get(context).workSuaMusica,
          description: AppTexts.get(context).flutterDeveloper,
        ),
        TitleDescriptionShort(
          title: AppTexts.get(context).workRocketseat,
          description: AppTexts.get(context).developerInstructor,
        ),
        TitleDescriptionShort(
          title: AppTexts.get(context).workUdemy,
          description: AppTexts.get(context).teachingAssistent,
        ),
        TitleDescriptionShort(
          title: AppTexts.get(context).workPersonalProjects,
          description: AppTexts.get(context).payngPriceEveryday,
        ),
      ],
    );
  }
}
