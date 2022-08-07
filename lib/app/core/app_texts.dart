import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTexts {
  static appBar(text) => Text(
        text,
        style: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
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
