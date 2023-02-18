import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/features/home/widgets/projects/projects_mobile.dart';

void main() {
  testWidgets('Should Renders ProjectsMobile', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(ProjectsMobile),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: ProjectsMobile(),
    ),
  );
}
