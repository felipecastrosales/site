import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/home/components/headers/headers.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';

class Social extends StatelessWidget {
  const Social({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 4,
          child: Image.asset(
            AppImages.socialAbstract,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Center(
          child: Image.asset(
            AppImages.socialGradient,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        ),
        Column(
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
                  child: SocialButtonsList(),
                ),
              ],
            ),
            SizedBox(height: 60),
            SectionDivider(),
          ],
        ),
      ],
    );
  }
}
