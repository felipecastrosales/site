import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/home/components/contact/components/components.dart';

void main() {
  testWidgets('Should renders CustomForm', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(CustomForm),
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
