import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

class CustomVerticalDivider extends StatelessWidget {
  final double width;

  const CustomVerticalDivider({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      color: AppColors.background,
      alignment: Alignment.bottomCenter,
    );
  }
}
