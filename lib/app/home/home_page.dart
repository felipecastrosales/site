import 'package:flutter/material.dart';

import 'package:site/app/core/colors/app_colors.dart';
import 'package:site/app/utils/breakpoints.dart';
import 'package:site/app/widgets/appbar/mobile_app_bar.dart';
import 'package:site/app/widgets/appbar/web_app_bar.dart';
import 'package:site/app/widgets/footer.dart';
import 'package:site/app/widgets/header.dart';
import 'package:site/app/widgets/social_buttons_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        debugPrint(constraints.maxWidth.toString());
        return Scaffold(
          backgroundColor: AppColors.background,
          appBar: constraints.maxWidth < Breakpoints.mobileAppBar
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 50),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 50),
                  child: WebAppBar(),
                ),
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 450),
              child: ListView(
                children: const [
                  Header(),
                  SocialButtonsList(),
                ],
              ),
            ),
          ),
          bottomNavigationBar: const Footer(),
        );
      },
    );
  }
}
