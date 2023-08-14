import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/features/home/widgets/contact/widgets/widgets.dart';

import '../../../../../../flutter_test_config.dart';

void main() {
  testWidgets('Should renders CustomForm', (tester) async {
    await appWidgetTest(
      tester: tester,
      widget: CustomForm(
        formKey: GlobalKey<FormState>(),
        nameController: TextEditingController(),
        emailController: TextEditingController(),
        subjectController: TextEditingController(),
        messageController: TextEditingController(),
        onPressed: () {
          debugPrint('onPressed');
        },
      ),
    );

    expect(
      find.byType(CustomForm),
      findsOneWidget,
    );

    expect(
      find.byType(CustomTextFormField),
      findsNWidgets(4),
    );

    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CustomTextFormField &&
            widget.prefixIcon == Icons.account_circle,
      ),
      findsOneWidget,
    );
  });
}
