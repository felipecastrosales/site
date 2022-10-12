import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/utils/context_ext.dart';
import 'package:site/app/utils/utils.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile(
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
          child: ImageAssetUtil(
            AppImages.contactVerticalTexture,
            width: context.width,
          ),
        ),
        Positioned(
          bottom: 0,
          child: ImageAssetUtil(
            AppImages.contactBottomGradient,
            width: context.width,
          ),
        ),
        Column(
          children: [
            MobileBody(
              children: [
                const SectionTitle(
                  paddingTop: 50,
                  paddingBottom: 20,
                  title: 'Contato',
                ),
                const SectionText(
                  paddingTop: 0,
                  paddingBottom: 45,
                  title: 'Vamos bater um papo, me chame:',
                ),
                widget,
              ],
            ),
            const SectionDivider(),
          ],
        ),
      ],
    );
  }
}
