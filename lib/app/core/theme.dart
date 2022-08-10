import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

class SiteTheme {
  SiteTheme._();
  static ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColors.primary,
        ),
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: AppColors.primary,
            ),
      );
}
