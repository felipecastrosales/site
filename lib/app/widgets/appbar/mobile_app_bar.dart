import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(right: 16),
          child: const Text(
            'FS',
            style: TextStyle(
              letterSpacing: 1.5,
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
