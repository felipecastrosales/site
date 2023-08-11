import 'package:flutter/material.dart';

import 'package:site/app/core/l10n/l10n.dart';
import 'package:site/app/features/home/widgets/social/widgets/widgets.dart';
import 'package:site/app/widgets/section/section.dart';

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
          title: AppTexts.get(context).socialLinks,
        ),
        SectionText(
          paddingTop: 0,
          paddingBottom: 24,
          title: AppTexts.get(context).followMeOnMySocialNetworks,
        ),
        const Center(
          child: SocialList(),
        ),
      ],
    );
  }
}
