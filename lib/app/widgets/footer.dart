import 'package:flutter/material.dart';

import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/core/tokens/tokens.dart';
import 'package:site/app/widgets/widgets.dart';

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
          SelectableText(
            AppTexts.createdByFelipeCastroSales,
            style: AppTextStyles.footer,
          ),
          const SizedBox(width: 2),
          const ImageAssetWidget(
            AppAssets.developer,
            height: 16,
          ),
        ],
      ),
    );
  }
}
