import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/home/components/contact/components/components.dart';
import 'package:site/app/utils/utils.dart';

void main() {
  testWidgets('Should renders CustomTextFormField', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(CustomTextFormField),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    MaterialApp(
      home: CustomTextFormField(
        controller: TextEditingController(),
        hintText: 'Nome',
        prefixIcon: Icons.account_circle,
        validator: (value) => ContactValitadors.name(value),
        onChanged: (value) {},
        keyboardType: TextInputType.text,
        maxLines: 1,
      ),
    ),
  );
}
