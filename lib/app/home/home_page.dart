import 'package:flutter/material.dart';

import 'package:site/app/core/colors/app_colors.dart';
import 'package:site/app/widgets/footer.dart';
import 'package:site/app/widgets/header.dart';
import 'package:site/app/widgets/social_buttons_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
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
  }
}
