import 'package:flutter/material.dart';

import 'package:site/app/widgets/section/section.dart';

import 'components.dart';

class TitleTextList extends StatelessWidget {
  const TitleTextList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SectionTitle(
          paddingTop: 50,
          paddingBottom: 20,
          title: 'Social Links',
        ),
        SectionText(
          paddingTop: 0,
          paddingBottom: 24,
          title: 'Me acompanhe nas minhas redes:',
        ),
        Center(
          child: SocialList(),
        ),
      ],
    );
  }
}
