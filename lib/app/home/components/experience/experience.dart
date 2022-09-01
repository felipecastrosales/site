import 'package:flutter/material.dart';

import 'package:site/app/core/responsive/breakpoints.dart';

import 'experience_mobile.dart';
import 'experience_web.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < Breakpoints.experience) {
          return const ExperienceMobile();
        } else {
          return const ExperienceWeb();
        }
      },
    );
  }
}
