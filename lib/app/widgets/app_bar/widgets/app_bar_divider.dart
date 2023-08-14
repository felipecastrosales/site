import 'package:flutter/material.dart';

import 'package:site/app/core/tokens/tokens.dart';

class AppBarDivider extends StatelessWidget {
  const AppBarDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,
      width: 1,
      color: AppColors.primary,
    );
  }
}
