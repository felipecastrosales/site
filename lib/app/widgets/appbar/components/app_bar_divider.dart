import 'package:flutter/material.dart';

import 'package:site/app/core/app_colors.dart';

class AppBarDivider extends StatelessWidget {
  const AppBarDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 12,
      width: 1,
      color: AppColors.primary,
    );
  }
}
