import 'package:flutter/material.dart';
import 'package:site/app/features/home/widgets/social/widgets/widgets.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';

class SocialAllCardsWeb extends StatelessWidget {
  const SocialAllCardsWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          WebBody(
            children: [
              TitleTextList(isWeb: true),
            ],
          ),
          SizedBox(height: 60),
          SectionDivider(),
        ],
      ),
    );
  }
}
