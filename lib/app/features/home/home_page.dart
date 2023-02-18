import 'dart:developer' as developer;

import 'package:flutter/material.dart';

import 'package:site/app/core/responsive/breakpoints.dart';
import 'package:site/app/widgets/drawer/drawer.dart';
import 'package:site/app/widgets/appbar/appbar.dart';

import 'widgets/contact/contact.dart';
import 'widgets/footer/custom_footer.dart';
import 'widgets/presentation/presentation.dart';
import 'widgets/projects/projects.dart';
import 'widgets/social/social.dart';
import 'widgets/experience/experience.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        developer.log(constraints.maxWidth.toString());
        return Scaffold(
          drawer: constraints.maxWidth < Breakpoints.appBar
              ? CustomDrawer(pageController)
              : null,
          body: Align(
            alignment: Alignment.topCenter,
            // child: ConstrainedBox(
            // constraints: const BoxConstraints(maxWidth: 600),
            child: ListView(
              children: const [
                CustomAppBar(),
                Presentation(),
                Projects(),
                Experience(),
                Social(),
                Contact(),
                CustomFooter(),
              ],
            ),
            // ),
          ),
        );
      },
    );
  }
}
