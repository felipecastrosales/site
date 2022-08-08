import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

class AppBarDivider extends StatelessWidget {
  const AppBarDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 1,
      color: AppColors.primary,
    );
  }
}
