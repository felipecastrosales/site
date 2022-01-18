import 'package:flutter/material.dart';

import 'package:site/app/widgets/footer.dart';
import 'package:site/app/widgets/header.dart';
import 'package:site/app/widgets/social_buttons_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff072227),
      body: Center(
        child: ListView(
          children: const [
            Header(),
            SocialButtonsList(),
          ],
        ),
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
