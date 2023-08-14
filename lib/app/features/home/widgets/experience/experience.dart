import 'package:flutter/material.dart';
import 'package:site/app/core/shared/app_keys.dart';

import 'package:site/app/core/responsive/responsive.dart';
import 'package:site/app/features/home/widgets/experience/experience_mobile.dart';
import 'package:site/app/features/home/widgets/experience/experience_web.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      key: AppKeys.experience,
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.experience
            ? const ExperienceMobile()
            : const ExperienceWeb();
      },
    );
  }
}
