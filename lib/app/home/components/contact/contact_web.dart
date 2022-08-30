import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';

class ContactWeb extends StatelessWidget {
  const ContactWeb(
    this.widget, {
    super.key,
  });

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Image.asset(
            AppImages.contactVerticalTexture,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image.asset(
            AppImages.contactBottomGradient,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Column(
          children: [
            const MobileBody(
              children: [
                SectionTitle(
                  paddingTop: 50,
                  paddingBottom: 20,
                  title: 'Contato',
                ),
                SectionText(
                  paddingTop: 0,
                  paddingBottom: 45,
                  title: 'Vamos bater um papo, me chame:',
                ),
              ],
            ),
            widget,
            const SectionDivider(),
          ],
        ),
      ],
    );
  }
}
