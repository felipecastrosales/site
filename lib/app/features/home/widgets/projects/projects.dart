import 'package:flutter/material.dart';

import 'package:site/app/core/responsive/breakpoints.dart';
import 'package:site/app/features/home/widgets/projects/projects_mobile.dart';
import 'package:site/app/features/home/widgets/projects/projects_web.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < Breakpoints.projects) {
          return const ProjectsMobile();
        } else {
          return const ProjectsWeb();
        }
      },
    );
  }
}
