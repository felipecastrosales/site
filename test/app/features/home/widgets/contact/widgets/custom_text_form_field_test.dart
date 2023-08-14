import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:site/app/features/home/widgets/contact/widgets/widgets.dart';
import 'package:site/app/utils/utils.dart';

import '../../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders CustomTextFormField', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: CustomTextFormField(
        controller: TextEditingController(),
        hintText: 'hintText',
        prefixIcon: Icons.account_circle,
        validator: (value) => ContactValidators.name(value),
        onChanged: (value) {
          debugPrint('onChanged');
        },
        keyboardType: TextInputType.text,
        maxLines: 1,
      ),
    );

    expect(
      find.byType(CustomTextFormField),
      findsOneWidget,
    );
  });
}
