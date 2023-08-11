import 'package:flutter/material.dart';

import 'package:site/app/core/extensions/extensions.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/features/home/widgets/social/widgets/widgets.dart';
import 'package:site/app/widgets/gradients/gradients.dart';
import 'package:site/app/widgets/images/images.dart';

class SocialWeb extends StatelessWidget {
  const SocialWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 4,
          child: ImageAssetWidget(
            AppAssets.socialAbstractLarge,
            alignment: Alignment.topCenter,
            width: context.width,
            height: 495,
          ),
        ),
        Positioned.fill(
          child: Opacity(
            opacity: 0.75,
            child: GradientWidget(
              height: 400,
              width: context.width,
              radius: 0.75,
            ),
          ),
        ),
        const SocialAllCardsWeb(),
      ],
    );
  }
}
