import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/experience/widgets/widgets.dart';

import '../../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders TitleDescriptionShort', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: const TitleDescriptionShort(
        title: '• title',
        description: '    — description',
      ),
    );

    expect(
      find.byType(TitleDescriptionShort),
      findsOneWidget,
    );
  });
}
