import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/home/components/contact/components/components.dart';
import 'package:site/app/utils/utils.dart';

void main() {
  testWidgets('Should renders CustomForm', (tester) async {
    await _createWidget(tester: tester);

    expect(find.byType(CustomForm), findsOneWidget);

    expect(find.byType(CustomTextFormField), findsNWidgets(4));

    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CustomTextFormField &&
            widget.hintText == 'Nome' &&
            widget.prefixIcon == Icons.account_circle &&
            widget.validator == ContactValitadors.name &&
            widget.controller == TextEditingController(),
        // widget.onChanged == (value) {},
      ),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      home: CustomForm(
        formKey: GlobalKey<FormState>(),
        nameController: TextEditingController(),
        emailController: TextEditingController(),
        subjectController: TextEditingController(),
        messageController: TextEditingController(),
        onPressed: () {},
      ),
    ),
  );
}
