import 'package:flutter/material.dart';

import 'package:site/app/widgets/footer.dart';
import 'package:site/app/widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff072227),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Header(),
        ],
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
