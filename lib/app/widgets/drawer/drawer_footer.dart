import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

class DrawerFooter extends StatelessWidget {
  const DrawerFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
      child: SizedBox(
        height: 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(AppImages.developer, height: 24),
            const SizedBox(width: 16),
            Text(
              'Deep Code.',
              textAlign: TextAlign.center,
              style: AppTexts.socialTitle,
            ),
          ],
        ),
      ),
    );
  }
}
