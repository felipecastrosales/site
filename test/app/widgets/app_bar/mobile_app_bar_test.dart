import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/widgets/app_bar/app_bar.dart';

import '../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders MobileAppBar', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const MobileAppBar(),
    );

    expect(
      find.byType(MobileAppBar),
      findsOneWidget,
    );
  });
}
