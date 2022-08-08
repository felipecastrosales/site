import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

import 'dividers.dart';

class PresentationDivider extends StatelessWidget {
  const PresentationDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: CustomDivider(
            height: 2,
            color: AppColors.primary,
          ),
        ),
        SizedBox(width: 50, height: 100),
        Expanded(
          child: CustomDivider(
            height: 2,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
