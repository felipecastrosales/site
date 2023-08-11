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
          child: GradientWidget(
            opacity: 0.5,
            height: context.height,
            alignment: Alignment.centerLeft,
          ),
        ),
        Positioned.fill(
          right: 0,
          child: GradientWidget(
            opacity: 0.5,
            height: context.height,
            alignment: Alignment.centerRight,
          ),
        ),
        SingleChildScrollViewWithoutScroll(
          child: Column(
            children: [
              WebBody(
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
