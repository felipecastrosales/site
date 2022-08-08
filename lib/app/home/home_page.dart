import 'dart:developer' as developer;

import 'package:flutter/material.dart';

import 'package:site/app/core/app_customs/app_colors.dart';
import 'package:site/app/widgets/appbar/appbar.dart';
import 'package:site/app/widgets/drawer/drawer.dart';

import 'package:site/app/widgets/footer.dart';

import 'components/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    return LayoutBuilder(
      builder: (context, constraints) {
        developer.log(constraints.maxWidth.toString());
        return Scaffold(
          backgroundColor: AppColors.background,
          drawer:
              constraints.maxWidth < 600 ? CustomDrawer(pageController) : null,
          body: Align(
            alignment: Alignment.topCenter,
            // child: ConstrainedBox(
            // constraints: const BoxConstraints(maxWidth: 450),
            child: ListView(
              children: const [
                CustomAppBar(),
                Header(),
                SocialButtonsList(),
              ],
            ),
            // ),
          ),
          bottomNavigationBar: const Footer(),
        );
      },
    );
  }
}
