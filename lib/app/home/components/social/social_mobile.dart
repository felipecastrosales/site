import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/utils/context_ext.dart';
import 'package:site/app/utils/utils.dart';

import 'components/components.dart';

class SocialMobile extends StatelessWidget {
  const SocialMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        bottom: 0,
        child: ImageAssetUtil(
          AppImages.socialAbstract,
          width: context.width,
        ),
      ),
      Positioned.fill(
        bottom: 0,
        child: Align(
          child: ImageAssetUtil(
            AppImages.socialGradientCenter,
            height: context.height,
          ),
        ),
      ),
      const SocialAllCardsMobile(),
    ]);
  }
}
