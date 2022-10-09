import 'package:flutter/material.dart';

import 'package:site/app/utils/utils.dart';

import 'package:site/app/widgets/custom_text_button.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      text: 'VER PROJETOS',
      onPressed: () async => LaunchUrls.launchURL('github.com/felipecastrosales'),
    );
  }
}
