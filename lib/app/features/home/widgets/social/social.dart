import 'package:flutter/material.dart';

import 'package:site/app/core/responsive/breakpoints.dart';

import 'social_mobile.dart';
import 'social_web.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < Breakpoints.social) {
          return const SocialMobile();
        } else {
          return const SocialWeb();
        }
      },
    );
  }
}
