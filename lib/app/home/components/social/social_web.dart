import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

import 'components/components.dart';

class SocialWeb extends StatelessWidget {
  const SocialWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Image.asset(
            AppImages.socialAbstractLarge,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            width: MediaQuery.of(context).size.width,
            height: 495,
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              AppImages.socialGradientCenter,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
            ),
          ),
        ),
        const SocialAllCardsWeb(),
      ],
    );
  }
}
