import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

class GradientText extends StatelessWidget {
  const GradientText({
    super.key,
    this.isWeb = false,
    required this.title,
    required this.gradient,
  });

  final bool isWeb;
  final String title;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        title,
        textAlign: TextAlign.start,
        style:
            isWeb ? AppTexts.presentationTitleWeb : AppTexts.presentationTitle,
      ),
    );
  }
}
