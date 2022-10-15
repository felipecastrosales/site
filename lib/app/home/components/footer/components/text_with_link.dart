import 'package:flutter/material.dart';
import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/utils/utils.dart';

class TextWithLink extends StatelessWidget {
  const TextWithLink(
    this.text,
    this.link, {
    super.key,
  });

  final String text;
  final String link;

  @override
  Widget build(BuildContext context) {
    const launch = LaunchUrls.launchURL;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => launch(link),
        child: Text(
          text,
          style: AppTexts.footerLink,
        ),
      ),
    );
  }
}
