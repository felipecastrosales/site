import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'headers.dart';

class SocialButtonsList extends StatelessWidget {
  const SocialButtonsList({super.key});

  void launchURL(String url) async => await launchUrl(
        Uri.parse('https://$url'),
        webOnlyWindowName: '_blank',
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialButtonsItems(
          title: 'GitHub',
          image: 'github.svg',
          onTap: () => launchURL('github.com/felipecastrosales'),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'LinkedIn',
          image: 'linkedin.svg',
          onTap: () => launchURL('linkedin.com/in/felipecastrosales'),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'Stack OverFlow',
          image: 'stack-overflow.svg',
          onTap: () =>
              launchURL('stackoverflow.com/users/13096514/felipe-sales'),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'Discord',
          image: 'discord.svg',
          onTap: () => launchURL('discordapp.com/users/406074089011281921'),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'Udemy',
          image: 'udemy.svg',
          onTap: () => launchURL('udemy.com/user/luis-felipe-de-castro-sales/'),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'Instagram',
          image: 'instagram.svg',
          onTap: () => launchURL('instagram.com/felipecastrosales'),
        ),
        const SizedBox(height: 14),
      ],
    );
  }
}
