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
            AppImages.contactHorizontalTexture,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            height: MediaQuery.of(context).size.height,
          ),
        ),
        Positioned.fill(
          left: 0,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              AppImages.contactGradientLeft,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              height: 600,
            ),
          ),
        ),
        Positioned.fill(
          right: 0,
          child: Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              AppImages.contactGradientRight,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              height: 600,
            ),
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
