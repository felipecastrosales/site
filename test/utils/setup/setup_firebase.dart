import 'package:flutter/services.dart';

import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';

typedef Callback = void Function(MethodCall call);

// ignore: avoid-unused-parameters
void setupFirebaseAuthMocks([Callback? customHandlers]) {
  TestWidgetsFlutterBinding.ensureInitialized();
  setupFirebaseCoreMocks();
}

Future<T> neverEndingFuture<T>() async {
  while (true) {
    await Future.delayed(
      const Duration(minutes: 5),
    );
  }
}
