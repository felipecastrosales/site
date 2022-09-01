import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

import 'card_glassmorphism.dart';

class SocialItem extends StatelessWidget {
  const SocialItem({
    Key? key,
    required this.title,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: CardGlassmorphism(
        child: Row(
          children: [
            const SizedBox(width: 23),
            SizedBox(
              height: 30,
              width: 30,
              child: SvgPicture.asset('${AppImages.socialLogo(image)}'),
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: AppTexts.socialTitle,
            ),
          ],
        ),
      ),
    );
  }
}
