import 'package:flutter/material.dart';

import 'package:site/app/widgets/custom_text_button.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      text: 'VER PROJETOS',
      onPressed: () async => await launchUrl(
        Uri.parse('https://github.com/felipecastrosales'),
        webOnlyWindowName: '_blank',
      ),
    );
  }
}
