import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

class SectionDivider extends StatelessWidget {
  const SectionDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      height: 2,
    );
  }
}
