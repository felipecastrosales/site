import 'package:flutter/material.dart';
import 'package:site/app/home/components/social/components/components.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';

class SocialAllCardsMobile extends StatelessWidget {
  const SocialAllCardsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        MobileBody(
          children: [
            TitleTextList(),
          ],
        ),
        SizedBox(height: 60),
        SectionDivider(),
      ],
    );
  }
}
