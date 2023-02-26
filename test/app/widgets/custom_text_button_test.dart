import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/utils/utils.dart';
import 'package:site/app/widgets/widgets.dart';

import '../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders CustomTextButton', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: CustomTextButton(
        text: 'VER PROJETOS',
        onPressed: () => LaunchUrls.launchURL(AppUrls.gitHub),
      ),
    );

    expect(
      find.byType(CustomTextButton),
      findsOneWidget,
    );
  });
}
