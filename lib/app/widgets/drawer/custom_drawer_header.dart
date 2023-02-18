import 'package:flutter/material.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/core/tokens/tokens.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

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
                image: AssetImage(AppAssets.profile),
              ),
            ),
          ),
        ),
        SelectableText(
          'Felipe Sales',
          textAlign: TextAlign.center,
          style: AppTextStyles.socialTitle,
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
