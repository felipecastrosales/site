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
          socialImage: 'assets/facebook.png',
          socialTitle: 'Facebook',
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          onTap: () => launchURL('instagram.com/felipecastrosales'),
          socialImage: 'assets/instagram.png',
          socialTitle: 'Instagram',
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          onTap: () => launchURL('github.com/felipecastrosales'),
          socialImage: 'assets/github.png',
          socialTitle: 'Github',
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          onTap: () => launchURL('linkedin.com/in/felipecastrosales'),
          socialImage: 'assets/linkedin.png',
          socialTitle: 'Linkedin',
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          onTap: () => launchURL('app.rocketseat.com.br/me/felipecastrosales'),
          socialImage: 'assets/rocketseat.png',
          socialTitle: 'Rocketseat',
        ),
        const SizedBox(height: 14),
        SocialButtonsItems(
          onTap: () => launchURL('stackoverflow.com/users/13096514/felipe-sales'),
          socialImage: 'assets/stackoverflow.png',
          socialTitle: 'Stackoverflow',
        ),
      ],
    );
  }
}
