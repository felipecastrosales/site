import 'package:flutter/material.dart';

import 'components.dart';

class SectionCustomTexts extends StatelessWidget {
  const SectionCustomTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TitleDescriptionShort(
          'Sua Música | 2022 - Currently',
          'Flutter Developer',
        ),
        TitleDescriptionShort(
          'Rocketseat | 2021 - 2022',
          'Developer Instructor',
        ),
        TitleDescriptionShort(
          'Udemy | 2020 - 2021',
          'Teaching Assistent',
        ),
        TitleDescriptionShort(
          'Personal Projects | 2020 - Ever',
          'Payng price everyday',
        ),
      ],
    );
  }
}
