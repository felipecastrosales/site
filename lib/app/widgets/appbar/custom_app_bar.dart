import 'package:flutter/material.dart';
import 'package:site/app/core/responsive/breakpoints.dart';

import 'appbar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < Breakpoints.appBar) {
          return const MobileAppBar();
        } else {
          return const WebAppBar();
        }
      },
    );
  }
}
