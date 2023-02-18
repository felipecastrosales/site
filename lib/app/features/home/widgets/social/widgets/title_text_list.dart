import 'package:flutter/material.dart';

import 'package:site/app/widgets/section/section.dart';

import 'components.dart';

class TitleTextList extends StatelessWidget {
  const TitleTextList({
    super.key,
    this.isWeb = false,
  });

  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(
          isWeb: isWeb,
          paddingTop: 50,
          paddingBottom: 20,
          title: 'Social Links',
        ),
        const SectionText(
          paddingTop: 0,
          paddingBottom: 24,
          title: 'Me acompanhe nas minhas redes:',
        ),
        const Center(
          child: SocialList(),
        ),
      ],
    );
  }
}
