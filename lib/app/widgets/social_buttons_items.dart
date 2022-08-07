import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:glassmorphism/glassmorphism.dart';

import 'package:site/app/core/app_gradients.dart';
import 'package:site/app/core/app_images.dart';
import 'package:site/app/core/app_texts.dart';

class SocialButtonsItems extends StatelessWidget {
  const SocialButtonsItems({
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
      borderRadius: BorderRadius.circular(8),
      child: GlassmorphicContainer(
        alignment: Alignment.center,
        height: 50,
        width: 278,
        blur: 20,
        borderRadius: 16,
        border: 0,
        linearGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [.1, .7],
          colors: AppGradients.glassmorphic,
        ),
        borderGradient: LinearGradient(
          colors: AppGradients.glassmorphic,
        ),
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
