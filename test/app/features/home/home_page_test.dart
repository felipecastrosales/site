import 'package:flutter/material.dart';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/features/home/home_page.dart';

import '../../../utils/utils.dart';

void main() {
  late MockFirebaseRemoteConfig mockFirebaseRemoteConfig;
  late MockHttpClient mockHttpClient;

  setUp(() {
    mockFirebaseRemoteConfig = MockFirebaseRemoteConfig();
    mockHttpClient = MockHttpClient();
  });

  testWidgets('Should renders HomePage', (tester) async {
    await _createWidget(
      tester: tester,
      firebaseRemoteConfig: mockFirebaseRemoteConfig,
      httpClient: mockHttpClient,
    );

    expect(
      find.byType(HomePage),
      findsOneWidget,
    );

    expect(
      find.byWidgetPredicate(
        (widget) => widget is LayoutBuilder,
      ),
      findsNWidgets(4),
    );

    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Scaffold && widget.body is ScrollablePositionedList,
      ),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
  required FirebaseRemoteConfig firebaseRemoteConfig,
  required http.Client httpClient,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      home: HomePage(
        firebaseRemoteConfig: firebaseRemoteConfig,
        httpClient: httpClient,
      ),
    ),
  );
}
