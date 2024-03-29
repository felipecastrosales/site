import 'package:flutter/material.dart';

import 'package:url_strategy/url_strategy.dart';

import 'package:site/app/app_widget.dart';
import 'package:site/app/core/injections/injections.dart';
import 'package:site/data/services/firebase/firebase.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseServiceImpl().setUpInitialization();
  setPathUrlStrategy();
  configureDependencies();
  runApp(
    AppWidget(),
  );
}
