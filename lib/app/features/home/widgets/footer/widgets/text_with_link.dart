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
      child: InkWell(
        onTap: () => LaunchUrls.launchURL(link),
        child: Text(
          text,
          style: AppTextStyles.footerLink,
        ),
      ),
    );
  }
}
