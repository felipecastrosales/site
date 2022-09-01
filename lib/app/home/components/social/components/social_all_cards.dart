import 'package:flutter/material.dart';
import 'package:site/app/home/components/social/components/components.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';

class SocialAllCards extends StatelessWidget {
  const SocialAllCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        MobileBody(
          children: [
            SectionTitle(
              paddingTop: 50,
              paddingBottom: 20,
              title: 'Social Links',
            ),
            SectionText(
              paddingTop: 0,
              paddingBottom: 24,
              title: 'Me acompanhe nas minhas redes:',
            ),
            Center(
              child: SocialList(),
            ),
          ],
        ),
        SizedBox(height: 60),
        SectionDivider(),
      ],
    );
  }
}
