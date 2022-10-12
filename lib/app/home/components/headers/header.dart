import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/utils/utils.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const SizedBox(
                height: 127,
                width: 127,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: AppColors.primary,
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: ClipOval(
                      child: ImageAssetUtil(
                        AppImages.profile,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              SelectableText(
                'Felipe Sales',
                style: AppTexts.name,
              ),
              const SizedBox(height: 4),
              SelectableText(
                'Flutter Developer Instructor',
                style: AppTexts.office,
              ),
              const SizedBox(height: 25),
            ],
          ),
        ],
      ),
    );
  }
}
