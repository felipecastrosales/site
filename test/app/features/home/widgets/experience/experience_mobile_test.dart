import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/features/home/widgets/experience/experience_mobile.dart';

import '../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders ExperienceMobile', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const ExperienceMobile(),
    );

    expect(
      find.byType(ExperienceMobile),
      findsOneWidget,
    );
  });
}
