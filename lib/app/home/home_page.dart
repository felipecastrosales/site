import 'dart:developer' as developer;

import 'package:flutter/material.dart';

import 'package:site/app/widgets/drawer/drawer.dart';
import 'package:site/app/widgets/appbar/appbar.dart';

import 'components/contact/contact.dart';
import 'components/footer/custom_footer.dart';
import 'components/presentation/presentation.dart';
import 'components/projects/projects.dart';
import 'components/social/social.dart';
import 'components/experience/experience.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        developer.log(constraints.maxWidth.toString());
        return Scaffold(
          drawer:
              constraints.maxWidth < 600 ? CustomDrawer(pageController) : null,
          body: Align(
            alignment: Alignment.topCenter,
            // child: ConstrainedBox(
            // constraints: const BoxConstraints(maxWidth: 600),
            child: PageView(
              controller: pageController,
              pageSnapping: false,
              scrollDirection: Axis.vertical,
              physics: const AlwaysScrollableScrollPhysics(),
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
