import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'app_customs.dart';

class AppTexts {
  static appBar(text) => Text(
        text,
        style: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
      );

  static final presentationTitle = GoogleFonts.montserrat(
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

  static final presentationSubtitle = GoogleFonts.montserrat(
    fontSize: 24,
    color: AppColors.white,
    fontWeight: FontWeight.w600,
  );

  static final presentationText = GoogleFonts.montserrat(
    fontSize: 20,
    color: AppColors.white,
    fontWeight: FontWeight.w600,
  );

  static final phrase = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    foreground: Paint()
      ..style = PaintingStyle.stroke
      ..color = AppColors.black
      ..strokeWidth = 2,
  );

  static final phraseWhite = GoogleFonts.montserrat(
    fontSize: 20,
    color: AppColors.white,
    fontWeight: FontWeight.w600,
  );

  static final phrasePrimary = GoogleFonts.montserrat(
    fontSize: 20,
    color: AppColors.primary,
    fontWeight: FontWeight.w600,
  );

  static final socialTitle = GoogleFonts.poppins(
    fontSize: 18,
    color: AppColors.light,
  );

  static final name = GoogleFonts.montserrat(
    color: AppColors.light,
    fontSize: 24,
  );

  static final office = GoogleFonts.montserrat(
    color: AppColors.light,
    fontSize: 18,
  );

  static final footer = GoogleFonts.montserrat(
    color: AppColors.light,
    fontSize: 16,
  );
}
