import 'package:flutter/material.dart';

import 'package:site/app/core/app_theme.dart';
import 'package:site/app/core/l10n/l10n.dart';
import 'package:site/app/features/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => AppTexts.get(context).projectTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: HomePage(),
    );
  }
}
