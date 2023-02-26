import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/core/l10n/l10n.dart';

Future<void> testExecutable(FutureOr<void> Function() main) async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await main();
}

Future<void> appWidgetTest({
  required WidgetTester tester,
  required Widget widget,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: widget,
    ),
  );
  await tester.pumpAndSettle();
}
