import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/home/components/social/social_mobile.dart';

void main() {
  testWidgets('Should renders SocialMobile', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(SocialMobile),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: SocialMobile(),
    ),
  );
}
