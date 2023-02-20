import 'package:flutter/material.dart';

import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/features/home/widgets/social/widgets/widgets.dart';
import 'package:site/app/utils/context_ext.dart';
import 'package:site/app/widgets/widgets.dart';

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
          bottom: 0,
          child: Align(
            child: ImageAssetWidget(
              AppAssets.socialGradientCenter,
              height: context.height,
            ),
          ),
        ),
        const SocialAllCardsMobile(),
      ],
    );
  }
}
