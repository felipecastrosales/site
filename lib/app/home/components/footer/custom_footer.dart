import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      color: AppColors.black,
      child: Stack(
        children: [
          Text('2022 - @felipecastrosales', style: AppTexts.phrase),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '2022 - ',
                  style: AppTexts.phraseWhite,
                ),
                TextSpan(
                  text: '@felipecastrosales',
                  style: AppTexts.phrasePrimary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
