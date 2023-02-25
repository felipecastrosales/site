import 'package:flutter/material.dart';

import 'package:site/app/core/responsive/responsive.dart';
import 'package:site/app/features/home/widgets/footer/footer.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.footer
            ? const FooterMobile()
            : const FooterWeb();
      },
    );
  }
}
