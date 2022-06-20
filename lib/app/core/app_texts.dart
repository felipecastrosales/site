import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'colors/app_colors.dart';

class AppTexts {
  static appBar(text) => Text(
        text,
        style: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.white,
        ),
      );
}
