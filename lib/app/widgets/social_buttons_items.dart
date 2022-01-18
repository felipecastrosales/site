import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class SocialButtonsItems extends StatelessWidget {
  const SocialButtonsItems({
    Key? key,
    required this.socialImage,
    required this.socialTitle,
    required this.onTap,
  }) : super(key: key);

  final String socialImage;
  final String socialTitle;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 50,
        width: 278,
        padding: const EdgeInsets.only(left: 58),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xff4361EE),
        ),
        child: Row(
          children: [
            SizedBox(
              height: 29,
              width: 29,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Image.asset(socialImage),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              socialTitle,
              style: GoogleFonts.inter(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
