import 'package:flutter/material.dart';

import 'app_customs.dart';

class AppGradients {
  static final glassmorphic = [
    AppColors.shadowLightSocial.withOpacity(.1),
    AppColors.shadowLightSocial.withOpacity(.25),
  ];

    static const stories = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    stops: [.0, .5, .9],
    colors: AppListColor.stories,
  );
}
