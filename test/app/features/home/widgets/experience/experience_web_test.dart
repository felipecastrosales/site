import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/experience/experience_web.dart';

import '../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders ExperienceWeb', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const ExperienceWeb(),
    );

    expect(
      find.byType(ExperienceWeb),
      findsOneWidget,
    );
  });
}
