import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/core/tokens/tokens.dart';

import 'card_glassmorphism.dart';

class SocialItem extends StatelessWidget {
  const SocialItem({
    super.key,
    required this.title,
    required this.image,
    required this.onTap,
  });

  final String title;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        borderRadius: BorderRadius.circular(16),
        child: CardGlassmorphism(
          child: Row(
            children: [
              const SizedBox(width: 24),
              SizedBox(
                height: 30,
                width: 30,
                child: SvgPicture.asset('${AppAssets.socialLogo(image)}'),
              ),
              const SizedBox(width: 10),
              Flexible(
                child: SelectableText(
                  title,
                  style: AppTextStyles.socialTitle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
