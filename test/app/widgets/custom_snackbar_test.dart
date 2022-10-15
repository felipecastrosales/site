import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/core/app_customs/app_customs.dart';
import 'package:site/app/widgets/widgets.dart';

const String snackBarText = 'E-mail enviado com sucesso!';
const Key tapTarget = Key('tap-target');

void main() {
  testWidgets('Should Renders CustomSnackbar', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.text(snackBarText),
      findsNothing,
    );

    await tester.tap(
      find.byKey(tapTarget),
      warnIfMissed: false,
    );

    expect(
      find.text(snackBarText),
      findsNothing,
    );

    await tester.pump();  

    expect(
      find.text(snackBarText),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: SizedBox(
          height: 800,
          width: 450,
          child: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  appShowSnackBar(
                    context,
                    text: snackBarText,
                    icon: Icons.check,
                    color: AppColors.primaryDark,
                    width: 300,
                  );
                },
                child: const SizedBox(
                  height: 800,
                  width: 450,
                  key: tapTarget,
                ),
              );
            },
          ),
        ),
      ),
    ),
  );
}