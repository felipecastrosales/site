import 'package:flutter/material.dart';
import 'package:site/app/core/colors/app_colors.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Home',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.white,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 12,
            width: 1,
            color: AppColors.primary,
          ),
          const Text(
            'Projects',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.white,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 12,
            width: 1,
            color: AppColors.primary,
          ),
          const Text(
            'Experience',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.white,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 12,
            width: 1,
            color: AppColors.primary,
          ),
          const Text(
            'Social Links',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.white,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 12,
            width: 1,
            color: AppColors.primary,
          ),
          const Text(
            'Contact Me',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.white,
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.black,
    );
  }
}
