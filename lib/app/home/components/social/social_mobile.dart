import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

import 'components/components.dart';

class SocialMobile extends StatelessWidget {
  const SocialMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        bottom: 0,
        child: Image.asset(
          AppImages.socialAbstract,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
          width: MediaQuery.of(context).size.width,
        ),
      ),
      Positioned.fill(
        bottom: 0,
        child: Align(
          child: Image.asset(
            AppImages.socialGradientCenter,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            height: MediaQuery.of(context).size.height,
          ),
        ),
      ),
      const SocialAllCardsMobile(),
    ]);
  }
}
