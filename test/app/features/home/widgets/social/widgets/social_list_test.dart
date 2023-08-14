import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/core/shared/shared.dart';

import 'package:site/app/features/home/widgets/social/widgets/widgets.dart';

import '../../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders SocialList', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const SocialList(),
    );

    await tester.tap(find.byKey(AppKeys.socialItemGitHub));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(AppKeys.socialItemLinkedIn));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(AppKeys.socialItemStackOverFlow));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(AppKeys.socialItemDiscord));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(AppKeys.socialItemUdemy));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(AppKeys.socialItemInstagram));
    await tester.pumpAndSettle();

    expect(find.byType(SocialList), findsOneWidget);
  });
}
