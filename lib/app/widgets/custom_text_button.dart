import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_customs.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        decoration: BoxDecoration(
          gradient: AppGradients.divider,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: AppTexts.buttonTitle,
        ),
      ),
    );
  }
}
