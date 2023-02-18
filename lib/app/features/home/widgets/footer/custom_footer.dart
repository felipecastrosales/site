import 'package:flutter/material.dart';

import 'package:site/app/core/responsive/breakpoints.dart';
import 'package:site/app/features/home/widgets/footer/footer.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < Breakpoints.footer) {
          return const FooterMobile();
        } else {
          return const FooterWeb();
        }
      },
    );
  }
}
