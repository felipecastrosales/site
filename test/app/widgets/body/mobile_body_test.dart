import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/widgets/body/body.dart';

void main() {
  testWidgets('Should renders MobileBody', (tester) async {
    await _createWidget(
      tester: tester,
    );

    expect(
      find.byType(MobileBody),
      findsOneWidget,
    );

    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Padding &&
            widget.padding == const EdgeInsets.symmetric(horizontal: 16) &&
            widget.child is Column,
      ),
      findsOneWidget,
    );

    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Column &&
            widget.mainAxisAlignment == MainAxisAlignment.start &&
            widget.crossAxisAlignment == CrossAxisAlignment.start &&
            widget.children.isNotEmpty,
      ),
      findsOneWidget,
    );
  });
}

Future<void> _createWidget({
  required WidgetTester tester,
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: MobileBody(
        children: [
          SizedBox(),
        ],
      ),
    ),
  );
}
