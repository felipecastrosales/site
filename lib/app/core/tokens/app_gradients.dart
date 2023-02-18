import 'package:flutter/material.dart';

import 'tokens.dart';

class AppGradients {
  static final glassmorphic = [
    AppColors.shadowLightSocial.withOpacity(.05),
    AppColors.shadowLightSocial.withOpacity(.15),
    AppColors.shadowLightSocial.withOpacity(.3),
  ];

  static const stories = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    stops: [.0, .5, .9],
    colors: AppListColor.stories,
  );

  static const divider = LinearGradient(
    colors: AppListColor.divider,
  );
}
