import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:site/app/widgets/social_buttons_items.dart';

class SocialButtonsList extends StatelessWidget {
  const SocialButtonsList({Key? key}) : super(key: key);
  void launchURL(String url) => launch('https://$url');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialButtonsItems(
          title: 'GitHub',
          image: 'github.png',
          onTap: () => launchURL('github.com/felipecastrosales'),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'LinkedIn',
          image: 'linkedin.png',
          onTap: () => launchURL('linkedin.com/in/felipecastrosales'),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'Stack OverFlow',
          image: 'stackoverflow.png',
          onTap: () =>
              launchURL('stackoverflow.com/users/13096514/felipe-sales'),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'Discord',
          image: 'discord.png',
          onTap: () => launchURL('discordapp.com/users/406074089011281921'),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'Rocketseat',
          image: 'rocketseat.png',
          onTap: () => launchURL('app.rocketseat.com.br/me/felipecastrosales'),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'Udemy',
          image: 'udemy.png',
          onTap: () => launchURL('udemy.com/user/luis-felipe-de-castro-sales/'),
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          title: 'Instagram',
          image: 'instagram.png',
          onTap: () => launchURL('instagram.com/felipecastrosales'),
        ),
        const SizedBox(height: 14),
      ],
    );
  }
}
