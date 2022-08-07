import 'package:flutter/material.dart';

import 'package:site/app/core/app_colors.dart';
import 'package:site/app/core/app_images.dart';
import 'package:site/app/core/app_texts.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

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
              const SizedBox(height: 80),
              SizedBox(
                height: 127,
                width: 127,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: AppColors.primary,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: ClipOval(
                      child: Image.asset(AppImages.profile),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Text(
                'Felipe Sales',
                style: AppTexts.name,
              ),
              const SizedBox(height: 4),
              Text(
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
