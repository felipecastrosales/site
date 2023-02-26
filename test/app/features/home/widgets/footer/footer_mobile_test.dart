import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/footer/footer.dart';

import '../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders FooterMobile', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const FooterMobile(),
    );

    expect(
      find.byType(FooterMobile),
      findsOneWidget,
    );
  });
}
