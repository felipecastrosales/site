import 'package:flutter/material.dart';

import 'package:site/app/core/extensions/extensions.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/features/home/widgets/social/widgets/widgets.dart';
import 'package:site/app/widgets/gradients/gradients.dart';
import 'package:site/app/widgets/images/images.dart';

class SocialMobile extends StatelessWidget {
  const SocialMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: ImageAssetWidget(
            AppAssets.socialAbstract,
            width: context.width,
          ),
        ),
        Positioned.fill(
          child: Opacity(
            opacity: 0.7,
            child: GradientWidget(
              height: 350,
              width: context.width,
              radius: 0.7,
            ),
          ),
        ),
        const SocialAllCardsMobile(),
      ],
    );
  }
}
