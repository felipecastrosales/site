import 'package:flutter/material.dart';

import 'package:site/app/core/tokens/tokens.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({
    super.key,
    required this.width,
  });

  final double width;

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
