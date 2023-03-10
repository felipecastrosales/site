import 'package:flutter/material.dart';

import 'package:site/app/core/tokens/tokens.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      surfaceTintColor: AppColors.transparent,
      actions: [
        Flexible(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(right: 16),
            child: const SelectableText(
              'FS',
              style: TextStyle(
                letterSpacing: 1.5,
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
