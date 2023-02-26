import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/experience/experience.dart';

import '../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders Experience', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const Experience(),
    );

    expect(
      find.byType(Experience),
      findsOneWidget,
    );
  });
}
