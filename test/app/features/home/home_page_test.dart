import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:site/app/features/home/home_page.dart';

void main() {
  testWidgets('Should renders HomePage', (tester) async {
    await _createWidget(tester: tester);

    expect(
      find.byType(HomePage),
      findsOneWidget,
    );

    expect(
      find.byWidgetPredicate(
        (widget) => widget is LayoutBuilder,
      ),
      findsNWidgets(4),
    );

    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Scaffold && widget.body is ScrollablePositionedList,
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
      home: HomePage(),
    ),
  );
}
