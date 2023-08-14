import 'package:flutter/material.dart';
import 'package:site/app/features/home/widgets/social/widgets/widgets.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';

class SocialAllCardsMobile extends StatelessWidget {
  const SocialAllCardsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
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
