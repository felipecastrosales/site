import 'package:flutter/material.dart';

import 'package:site/app/core/tokens/tokens.dart';
import 'package:site/app/utils/utils.dart';

class TextWithLink extends StatelessWidget {
  const TextWithLink({
    super.key,
    required this.text,
    required this.link,
  });

  final String text, link;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparent,
      borderRadius: BorderRadius.circular(8),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        splashColor: AppColors.primary,
        overlayColor: MaterialStateProperty.all(
          AppColors.primary.withOpacity(0.25),
        ),
        onTap: () => LaunchUrls().launchURL(link),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            text,
            style: AppTextStyles.footerLink,
          ),
        ),
      ),
    );
  }
}
