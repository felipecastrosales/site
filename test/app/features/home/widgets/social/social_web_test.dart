import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/features/home/widgets/social/social_web.dart';

void main() {
  testWidgets('Should renders SocialWeb', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(SocialWeb),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: SocialWeb(),
    ),
  );
}
