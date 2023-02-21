import 'package:flutter/material.dart';

import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/utils/extensions/media_query_ext.dart';
import 'package:site/app/widgets/body/body.dart';
import 'package:site/app/widgets/dividers/dividers.dart';
import 'package:site/app/widgets/section/section.dart';
import 'package:site/app/widgets/widgets.dart';

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
        // TODO:
        // Positioned(
        //   bottom: 0,
        //   child:
        // ImageAssetWidget(
        //     AppAssets.contactBottomGradient,
        //     width: context.width,
        //   ),
        // ),

        Positioned(
          bottom: 0,
          child: Container(
            height: 400,
            clipBehavior: Clip.antiAlias,
            width: context.width,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [Color(0xff4a3aff), Colors.transparent],
                center: Alignment.bottomCenter,
                radius: 0.8,
              ),
            ),
          ),
        ),
        Column(
          children: [
            MobileBody(
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
