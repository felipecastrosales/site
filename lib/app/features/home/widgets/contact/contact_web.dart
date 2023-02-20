import 'package:flutter/material.dart';

import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/utils/context_ext.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';
import 'package:site/app/widgets/widgets.dart';

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
          child: ImageAssetWidget(
            AppAssets.contactHorizontalTexture,
            height: context.height,
            width: context.width,
          ),
        ),
        Positioned.fill(
          left: 0,
          child: Align(
            alignment: Alignment.centerLeft,
            child: ImageAssetWidget(
              AppAssets.contactGradientLeft,
              height: context.height,
            ),
          ),
        ),
        Positioned.fill(
          right: 0,
          child: Align(
            alignment: Alignment.centerRight,
            child: ImageAssetWidget(
              AppAssets.contactGradientRight,
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
                  title: AppTexts.contact,
                ),
                const SectionText(
                  paddingTop: 0,
                  paddingBottom: 45,
                  title: AppTexts.letsChatCallMe,
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
