import 'package:flutter/material.dart';

import 'package:url_strategy/url_strategy.dart';

import 'app/app_widget.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    const AppWidget(),
  );
}
