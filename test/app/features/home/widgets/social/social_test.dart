import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/social/social.dart';

import '../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders Social', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const Social(),
    );

    expect(
      find.byType(Social),
      findsOneWidget,
    );
  });
}
