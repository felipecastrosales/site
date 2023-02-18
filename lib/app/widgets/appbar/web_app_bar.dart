import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          WebAppBarTitle('Home', 0),
          AppBarDivider(),
          WebAppBarTitle('Projetos', 1),
          AppBarDivider(),
          WebAppBarTitle('Experiência', 2),
          AppBarDivider(),
          WebAppBarTitle('Social Links', 3),
          AppBarDivider(),
          WebAppBarTitle('Contato', 4),
        ],
      ),
    );
  }
}
