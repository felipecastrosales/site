import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/utils/utils.dart';
import 'package:site/app/widgets/buttons/buttons.dart';

import '../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders AppTextButton', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: AppTextButton(
        text: 'VER PROJETOS',
        onPressed: () => LaunchUrls.launchURL(AppUrls.gitHub),
      ),
    );

    expect(
      find.byType(AppTextButton),
      findsOneWidget,
    );
  });
}
