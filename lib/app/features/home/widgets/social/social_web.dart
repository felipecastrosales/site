import 'package:flutter/material.dart';

import 'package:site/app/core/tokens/tokens.dart';
import 'package:site/app/utils/context_ext.dart';
import 'package:site/app/utils/utils.dart';

import 'widgets/components.dart';

class SocialWeb extends StatelessWidget {
  const SocialWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 4,
          child: ImageAssetUtil(
            AppImages.socialAbstractLarge,
            alignment: Alignment.topCenter,
            width: context.width,
            height: 495,
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: ImageAssetUtil(
              AppImages.socialGradientCenter,
              width: context.width,
              height: context.height,
            ),
          ),
        ),
        const SocialAllCardsWeb(),
      ],
    );
  }
}
