import 'package:flutter/material.dart';

import 'package:site/app/core/responsive/breakpoints.dart';
import 'package:site/app/features/home/widgets/presentation/presentation_mobile.dart';
import 'package:site/app/features/home/widgets/presentation/presentation_web.dart';

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < Breakpoints.presentation) {
          return const PresentationMobile();
        } else {
          return const PresentationWeb();
        }
      },
    );
  }
}
