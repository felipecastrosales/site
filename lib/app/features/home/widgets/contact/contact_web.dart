import 'package:flutter/material.dart';

import 'package:site/app/core/tokens/tokens.dart';
import 'package:site/app/utils/context_ext.dart';
import 'package:site/app/utils/utils.dart';
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
          child: ImageAssetUtil(
            AppImages.contactHorizontalTexture,
            height: context.height,
          ),
        ),
        Positioned.fill(
          left: 0,
          child: Align(
            alignment: Alignment.centerLeft,
            child: ImageAssetUtil(
              AppImages.contactGradientLeft,
              height: context.height,
            ),
          ),
        ),
        Positioned.fill(
          right: 0,
          child: Align(
            alignment: Alignment.centerRight,
            child: ImageAssetUtil(
              AppImages.contactGradientRight,
              height: context.height,
            ),
          ),
        ),
        Column(
          children: [
            WebBody(
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
