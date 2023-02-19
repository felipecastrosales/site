import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/features/home/widgets/social/widgets/widgets.dart';

void main() {
  testWidgets('Should renders CardGlassmorphism', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(CardGlassmorphism),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: CardGlassmorphism(
        child: SizedBox(),
      ),
    ),
  );
}
