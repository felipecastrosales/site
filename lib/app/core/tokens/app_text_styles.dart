import 'package:flutter/material.dart';
import 'package:site/app/core/shared/shared.dart';

import 'package:site/app/core/tokens/tokens.dart';

class AppTextStyles {
  static Text appBar(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
      );

  static const presentationTitle = TextStyle(
    fontSize: 32,
    color: AppColors.primary,
    fontWeight: FontWeight.w700,
  );

  static const presentationTitleWeb = TextStyle(
    fontSize: 50,
    color: AppColors.primary,
    fontWeight: FontWeight.w700,
  );

  static const presentationSubtitle = TextStyle(
    fontSize: 24,
    color: AppColors.white,
    fontWeight: FontWeight.w600,
  );

  static const presentationText = TextStyle(
    fontSize: 20,
    color: AppColors.white,
    fontWeight: FontWeight.w600,
  );

  static final phrase = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    foreground: Paint()
      ..style = PaintingStyle.stroke
      ..color = AppColors.black
      ..strokeWidth = 2,
  );

  static const phraseWhite = TextStyle(
    fontSize: 20,
    color: AppColors.white,
    fontWeight: FontWeight.w600,
  );

  static const phrasePrimary = TextStyle(
    fontSize: 20,
    color: AppColors.primary,
    fontWeight: FontWeight.w600,
  );

  static const hint = TextStyle(
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );

  static const textForm = TextStyle(
    fontSize: 14,
    color: AppColors.background,
    fontWeight: FontWeight.w500,
  );

  static const errorForm = TextStyle(
    fontSize: 14,
    color: AppColors.white,
    fontWeight: FontWeight.w300,
  );

  static const buttonTitle = TextStyle(
    fontSize: 16,
    color: AppColors.white,
    fontWeight: FontWeight.w600,
  );

  static const socialTitle = TextStyle(
    fontSize: 18,
    color: AppColors.light,
    fontFamily: AppDatas.poppins,
  );

  static const name = TextStyle(
    color: AppColors.light,
    fontSize: 24,
  );

  static const office = TextStyle(
    color: AppColors.light,
    fontSize: 18,
  );

  static const footer = TextStyle(
    color: AppColors.light,
    fontSize: 12,
  );

  static const footerLink = TextStyle(
    color: AppColors.light,
    fontSize: 20,
  );

  static const experienceTitle = TextStyle(
    color: AppColors.light,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const experienceDescription = TextStyle(
    color: AppColors.light,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
}
