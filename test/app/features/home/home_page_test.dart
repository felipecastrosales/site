import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:site/app/features/home/home_page.dart';

import '../../../flutter_test_config.dart';
import '../../../utils/utils.dart';

void main() {
  late MockFirebaseRemoteConfig mockFirebaseRemoteConfig;
  late MockHttpClient mockHttpClient;

  setUp(() {
    mockFirebaseRemoteConfig = MockFirebaseRemoteConfig();
    mockHttpClient = MockHttpClient();
  });

  testWidgets('Should renders HomePage', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: HomePage(
        firebaseRemoteConfig: mockFirebaseRemoteConfig,
        httpClient: mockHttpClient,
      ),
    );

    expect(
      find.byType(HomePage),
      findsOneWidget,
    );

    expect(
      find.byWidgetPredicate(
        (widget) => widget is LayoutBuilder,
      ),
      findsNWidgets(5),
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
