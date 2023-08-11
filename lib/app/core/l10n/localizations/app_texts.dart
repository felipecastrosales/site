import 'package:flutter/material.dart';

import 'package:site/app/core/l10n/l10n.dart';

class AppTexts {
  static AppLocalizations get(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }
}
