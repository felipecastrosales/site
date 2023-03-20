import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/features/home/widgets/footer/widgets/widgets.dart';

import '../../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders TextWithLink', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const TextWithLink(
        text: AppUrls.gitHubProject,
        link: AppUrls.gitHubProject,
      ),
    );

    final textWithLinkFinder = find.byType(TextWithLink);

    await tester.tap(textWithLinkFinder);
    await tester.pumpAndSettle();

    expect(textWithLinkFinder, findsOneWidget);
  });
}
