import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:site/app/core/colors/app_colors.dart';

class SocialButtonsItems extends StatelessWidget {
  const SocialButtonsItems({
    Key? key,
    required this.title,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: GlassmorphicContainer(
        alignment: Alignment.center,
        height: 50,
        width: 278,
        blur: 20,
        borderRadius: 16,
        border: 0,
        linearGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [.1, .7],
          colors: [
            AppColors.shadowLightSocial.withOpacity(.1),
            AppColors.shadowLightSocial.withOpacity(.25),
          ],
        ),
        borderGradient: LinearGradient(
          colors: [
            AppColors.shadowLightSocial.withOpacity(.1),
            AppColors.shadowLightSocial.withOpacity(.25),
          ],
        ),
        child: Row(
          children: [
            const SizedBox(width: 23),
            SizedBox(
              height: 30,
              width: 30,
              child: SvgPicture.asset('assets/social/$image'),
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: AppColors.light,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
