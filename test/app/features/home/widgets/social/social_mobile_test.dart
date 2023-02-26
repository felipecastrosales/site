import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/social/social_mobile.dart';

import '../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders SocialMobile', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const SocialMobile(),
    );

    expect(
      find.byType(SocialMobile),
      findsOneWidget,
    );
  });
}
