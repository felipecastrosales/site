import 'package:flutter/material.dart';

import 'package:site/app/core/l10n/l10n.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/features/home/widgets/social/widgets/widgets.dart';
import 'package:site/app/utils/utils.dart';

class SocialList extends StatelessWidget {
  const SocialList({super.key});

  @override
  Widget build(BuildContext context) {
    final launch = LaunchUrls().launchURL;

    return Column(
      children: [
        SocialItem(
          key: AppKeys.socialItemGitHub,
          title: AppTexts.get(context).gitHub,
          image: AppAssets.gitHub,
          onTap: () => launch(AppUrls.gitHub),
        ),
        const SizedBox(height: 14),
        SocialItem(
          key: AppKeys.socialItemLinkedIn,
          title: AppTexts.get(context).linkedIn,
          image: AppAssets.linkedIn,
          onTap: () => launch(AppUrls.linkedIn),
        ),
        const SizedBox(height: 14),
        SocialItem(
          key: AppKeys.socialItemStackOverFlow,
          title: AppTexts.get(context).stackOverFlow,
          image: AppAssets.stackOverFlow,
          onTap: () => launch(AppUrls.stackOverFlow),
        ),
        const SizedBox(height: 14),
        SocialItem(
          key: AppKeys.socialItemDiscord,
          title: AppTexts.get(context).discord,
          image: AppAssets.discord,
          onTap: () => launch(AppUrls.discord),
        ),
        const SizedBox(height: 14),
        SocialItem(
          key: AppKeys.socialItemUdemy,
          title: AppTexts.get(context).udemy,
          image: AppAssets.udemy,
          onTap: () => launch(AppUrls.udemy),
        ),
        const SizedBox(height: 14),
        SocialItem(
          key: AppKeys.socialItemInstagram,
          title: AppTexts.get(context).instagram,
          image: AppAssets.instagram,
          onTap: () => launch(AppUrls.instagram),
        ),
        const SizedBox(height: 14),
      ],
    );
  }
}
