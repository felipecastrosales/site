import 'package:flutter/material.dart';

import 'tokens.dart';

class AppGradients {
  static const stories = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    stops: [.0, .5, .9],
    colors: AppListColors.stories,
  );

  static const divider = LinearGradient(
    colors: AppListColors.divider,
  );

  static final glassmorphic = LinearGradient(
    colors: AppListColors.glassmorphic,
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
