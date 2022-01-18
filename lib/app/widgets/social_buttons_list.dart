import 'package:flutter/material.dart';

import 'package:site/app/widgets/social_buttons_items.dart';

class SocialButtonsList extends StatelessWidget {
  const SocialButtonsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SocialButtonsItems(
          socialImage: 'assets/facebook.png',
          socialTitle: 'Facebook',
        ),
        SocialButtonsItems(
          socialImage: 'assets/instagram.png',
          socialTitle: 'Instagram',
        ),
        SocialButtonsItems(
          socialImage: 'assets/github.png',
          socialTitle: 'Github',
        ),
        SocialButtonsItems(
          socialImage: 'assets/linkedin.png',
          socialTitle: 'Linkedin',
        ),
        SocialButtonsItems(
          socialImage: 'assets/rocketseat.png',
          socialTitle: 'Rocketseat',
        ),
        SocialButtonsItems(
          socialImage: 'assets/stackoverflow.png',
          socialTitle: 'Stackoverflow',
        ),
      ],
    );
  }
}
