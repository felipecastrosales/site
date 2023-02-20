import 'package:flutter/material.dart';

import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/features/home/widgets/social/widgets/widgets.dart';
import 'package:site/app/utils/utils.dart';

class SocialList extends StatelessWidget {
  const SocialList({super.key});

  @override
  Widget build(BuildContext context) {
    const launch = LaunchUrls.launchURL;

    return Column(
      children: [
        SocialItem(
          title: AppTexts.gitHub,
          image: AppAssets.gitHub,
          onTap: () => launch(AppUrls.gitHub),
        ),
        const SizedBox(height: 14),
        SocialItem(
          title: AppTexts.linkedIn,
          image: AppAssets.linkedIn,
          onTap: () => launch(AppUrls.linkedIn),
        ),
        const SizedBox(height: 14),
        SocialItem(
          title: AppTexts.stackOverFlow,
          image: AppAssets.stackOverFlow,
          onTap: () => launch(AppUrls.stackOverFlow),
        ),
        const SizedBox(height: 14),
        SocialItem(
          title: AppTexts.discord,
          image: AppAssets.discord,
          onTap: () => launch(AppUrls.discord),
        ),
        const SizedBox(height: 14),
        SocialItem(
          title: AppTexts.udemy,
          image: AppAssets.udemy,
          onTap: () => launch(AppUrls.udemy),
        ),
        const SizedBox(height: 14),
        SocialItem(
          title: AppTexts.instagram,
          image: AppAssets.instagram,
          onTap: () => launch(AppUrls.instagram),
        ),
        const SizedBox(height: 14),
      ],
    );
  }
}
