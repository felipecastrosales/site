import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/core/shared/shared.dart';

import 'package:site/app/core/tokens/tokens.dart';
import 'package:site/app/widgets/snack_bars/snack_bars.dart';

import '../../../flutter_test_config.dart';

const String snackBarText = 'E-mail enviado com sucesso!';

void main() {
  testWidgets('Should Renders AppShowSnackBar', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: Scaffold(
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
                  key: AppKeys.snackBarKey,
                ),
              );
            },
          ),
        ),
      ),
    );

    expect(
      find.text(snackBarText),
      findsNothing,
    );

    await tester.tap(
      find.byKey(AppKeys.snackBarKey),
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
