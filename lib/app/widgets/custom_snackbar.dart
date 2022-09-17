import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

class CustomSnackbar {
  final String text;
  final IconData icon;
  final Color color;

  const CustomSnackbar({
    required this.text,
    required this.icon,
    required this.color,
  });

  static showSnackBar(
    BuildContext context, {
    required String text,
    required IconData icon,
    required Color color,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 8,
        duration: const Duration(seconds: 3),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        content: Row(
          children: [
            Icon(
              icon,
              size: 28,
              color: AppColors.white,
            ),
            const SizedBox(width: 8),
            Flexible(
              child: FittedBox(
                fit: BoxFit.contain,
                child: AutoSizeText(
                  text,
                  maxLines: 1,
                  style: AppTexts.buttonTitle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}