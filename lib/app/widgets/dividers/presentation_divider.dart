import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:site/app/core/tokens/tokens.dart';

import 'dividers.dart';

class PresentationDivider extends StatelessWidget {
  const PresentationDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Expanded(
          child: CustomDivider(
            2,
            AppColors.primary,
            margin: EdgeInsets.zero,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Lottie.asset(AppAssets.mouse, height: 50),
        ),
        const Expanded(
          child: CustomDivider(
            2,
            AppColors.primary,
            margin: EdgeInsets.zero,
          ),
        ),
      ],
    );
  }
}
