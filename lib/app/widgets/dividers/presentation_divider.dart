import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

import 'dividers.dart';

class PresentationDivider extends StatelessWidget {
  const PresentationDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Expanded(
          child: CustomDivider(
            height: 2,
            color: AppColors.primary,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Lottie.asset('assets/components/mouse-down.json', height: 50),
        ),
        const Expanded(
          child: CustomDivider(
            height: 2,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
