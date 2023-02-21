import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/core/shared/shared.dart';
import 'package:site/app/utils/utils.dart';
import 'package:site/app/widgets/widgets.dart';

void main() {
  testWidgets('Should renders CustomTextButton', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(CustomTextButton),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      home: CustomTextButton(
        text: 'VER PROJETOS',
        onPressed: () => LaunchUrls.launchURL(AppUrls.gitHub),
      ),
    ),
  );
}
