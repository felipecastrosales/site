import 'package:flutter/material.dart';

import 'package:site/app/core/extensions/extensions.dart';
import 'package:site/app/core/l10n/l10n.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/gradients/gradients.dart';
import 'package:site/app/widgets/images/images.dart';
import 'package:site/app/widgets/section/section.dart';
import 'package:site/app/widgets/utils_widgets/utils_widgets.dart';

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
          child: ImageAssetWidget(
            AppAssets.contactVerticalTexture,
            height: context.height,
            width: context.width,
          ),
        ),
        Positioned.fill(
          child: GradientWidget(
            radius: 1,
            opacity: 0.6,
            height: 400,
            width: context.width,
            alignment: Alignment.bottomCenter,
          ),
        ),
        SingleChildScrollViewWithoutScroll(
          child: Column(
            children: [
              MobileBody(
                children: [
                  SectionTitle(
                    paddingTop: 50,
                    paddingBottom: 20,
                    title: AppTexts.get(context).contact,
                  ),
                  SectionText(
                    paddingTop: 0,
                    paddingBottom: 45,
                    title: AppTexts.get(context).letsChatCallMe,
                  ),
                  widget,
                ],
              ),
              const SectionDivider(),
            ],
          ),
        ),
      ],
    );
  }
}
