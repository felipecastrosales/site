import 'package:flutter/material.dart';

import 'package:site/app/utils/utils.dart';

import 'components.dart';

class SocialList extends StatelessWidget {
  const SocialList({super.key});

  @override
  Widget build(BuildContext context) {
    const launch = LaunchUrls.launchURL;

    return Column(
      children: [
        SocialItem(
          title: 'GitHub',
          image: 'github.svg',
          onTap: () => launch('github.com/felipecastrosales'),
        ),
        const SizedBox(height: 14),
        SocialItem(
          title: 'LinkedIn',
          image: 'linkedin.svg',
          onTap: () => launch('linkedin.com/in/felipecastrosales'),
        ),
        const SizedBox(height: 14),
        SocialItem(
          title: 'Stack OverFlow',
          image: 'stack-overflow.svg',
          onTap: () => launch(
            'stackoverflow.com/users/13096514/felipe-sales',
          ),
        ),
        const SizedBox(height: 14),
        SocialItem(
          title: 'Discord',
          image: 'discord.svg',
          onTap: () => launch('discordapp.com/users/406074089011281921'),
        ),
        const SizedBox(height: 14),
        SocialItem(
          title: 'Udemy',
          image: 'udemy.svg',
          onTap: () => launch('udemy.com/user/luis-felipe-de-castro-sales/'),
        ),
        const SizedBox(height: 14),
        SocialItem(
          title: 'Instagram',
          image: 'instagram.svg',
          onTap: () => launch('instagram.com/felipecastrosales'),
        ),
        const SizedBox(height: 14),
      ],
    );
  }
}
