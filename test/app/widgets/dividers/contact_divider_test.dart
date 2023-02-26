import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/widgets/dividers/dividers.dart';

import '../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders ContactDivider', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const ContactDivider(),
    );

    expect(
      find.byType(ContactDivider),
      findsOneWidget,
    );
  });
}
