import 'package:flutter/material.dart';

import 'package:site/app/core/tokens/tokens.dart';

class AppGradients {
  static const stories = LinearGradient(
    colors: AppListColors.stories,
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    stops: [0.0, 0.5, 0.9],
  );

  static const divider = LinearGradient(
    colors: AppListColors.divider,
  );

  static const button = LinearGradient(
    colors: AppListColors.button,
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static final glassmorphic = LinearGradient(
    colors: AppListColors.glassmorphic,
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static RadialGradient gradientWidget({
    required AlignmentGeometry alignment,
    required double radius,
  }) {
    return RadialGradient(
      colors: AppListColors.gradientWidget,
      center: alignment,
      radius: radius,
    );
  }
}
