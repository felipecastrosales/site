import 'package:flutter/material.dart';

import 'package:site/app/core/shared/shared.dart';

import 'core/theme.dart';
import 'features/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTexts.projectTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const HomePage(),
    );
  }
}
