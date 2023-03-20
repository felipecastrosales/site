import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/app_widget.dart';

import '../flutter_test_config.dart';
import '../utils/utils.dart';

void main() {
  late MockFirebaseRemoteConfig mockFirebaseRemoteConfig;
  late MockHttpClient mockHttpClient;

  setUp(() {
    mockFirebaseRemoteConfig = MockFirebaseRemoteConfig();
    mockHttpClient = MockHttpClient();
  });

  testWidgets('Should renders AppWidget', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: AppWidget(
        firebaseRemoteConfig: mockFirebaseRemoteConfig,
        httpClient: mockHttpClient,
      ),
    );

    expect(
      find.byType(AppWidget),
      findsOneWidget,
    );
  });
}
