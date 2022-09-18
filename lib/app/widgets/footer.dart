import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      margin: const EdgeInsets.only(top: 4),
      color: AppColors.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Criado por @felipecastrosales™',
            style: AppTexts.footer,
          ),
          const SizedBox(width: 2),
          Image.asset(
            AppImages.developer,
            height: 16,
            filterQuality: FilterQuality.high,
          ),
        ],
      ),
    );
  }
}
