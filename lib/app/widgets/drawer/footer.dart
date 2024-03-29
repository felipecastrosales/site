import 'package:flutter/material.dart';

import 'package:site/app/core/l10n/l10n.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/core/tokens/tokens.dart';
import 'package:site/app/widgets/images/images.dart';

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
            AppTexts.get(context).createdByFelipeCastroSales,
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
