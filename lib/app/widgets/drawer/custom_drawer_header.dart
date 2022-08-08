import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(16, 24, 16, 8),
          width: 120,
          height: 120,
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
            gradient: AppGradients.stories,
          ),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(AppImages.profile),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          'Felipe Sales',
          textAlign: TextAlign.center,
          style: AppTexts.socialTitle,
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
