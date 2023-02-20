import 'package:flutter/material.dart';

import 'package:url_strategy/url_strategy.dart';

import 'package:site/app/app_widget.dart';
import 'package:site/data/services/firebase/firebase.dart';

Future<void> main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseServiceImpl().setUpInitialization();
  runApp(
    const AppWidget(),
  );
}
