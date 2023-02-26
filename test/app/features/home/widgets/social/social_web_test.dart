import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/social/social_web.dart';

import '../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders SocialWeb', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const SocialWeb(),
    );

    expect(
      find.byType(SocialWeb),
      findsOneWidget,
    );
  });
}
