import 'package:flutter/material.dart';

import 'package:url_strategy/url_strategy.dart';

import 'package:site/app/app_widget.dart';

void main() {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const AppWidget(),
  );
}
