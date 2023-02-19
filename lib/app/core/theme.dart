import 'package:flutter/material.dart';

import 'package:site/app/core/tokens/tokens.dart';

class AppTheme {
  AppTheme._();
  static ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColors.primary,
        ),
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: AppColors.primary,
            ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.black,
          elevation: 0,
          iconTheme: IconThemeData(color: AppColors.primary),
        ),
      );
}
