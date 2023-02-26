import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/footer/footer.dart';

import '../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders FooterWeb', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const FooterWeb(),
    );

    expect(
      find.byType(FooterWeb),
      findsOneWidget,
    );
  });
}
