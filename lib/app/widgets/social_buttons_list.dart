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
          onTap: () => launchURL('facebook.com/felipecastrosales'),
          image: 'assets/facebook.png',
          title: 'Facebook',
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          onTap: () => launchURL('instagram.com/felipecastrosales'),
          image: 'assets/instagram.png',
          title: 'Instagram',
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          onTap: () => launchURL('github.com/felipecastrosales'),
          image: 'assets/github.png',
          title: 'GitHub',
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          onTap: () => launchURL('linkedin.com/in/felipecastrosales'),
          image: 'assets/linkedin.png',
          title: 'LinkedIn',
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          onTap: () => launchURL('app.rocketseat.com.br/me/felipecastrosales'),
          image: 'assets/rocketseat.png',
          title: 'Rocketseat',
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          onTap: () =>
              launchURL('stackoverflow.com/users/13096514/felipe-sales'),
          image: 'assets/stackoverflow.png',
          title: 'Stack OverFlow',
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          onTap: () => launchURL('discordapp.com/users/406074089011281921'),
          image: 'assets/discord.png',
          title: 'Discord',
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          onTap: () => launchURL('udemy.com/user/luis-felipe-de-castro-sales/'),
          image: 'assets/udemy.png',
          title: 'Udemy',
        ),
        const SizedBox(height: 14),
      ],
    );
  }
}
