import 'package:flutter/material.dart';

import 'core/theme.dart';
import 'features/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Felipe Sales | Social Links',
      debugShowCheckedModeBanner: false,
      theme: SiteTheme.theme,
      home: HomePage(),
    );
  }
}
