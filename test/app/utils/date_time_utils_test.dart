import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/utils/utils.dart';

void main() {
  testWidgets('DateTimeUtils get year', (tester) async {
    var date = DateTimeUtils.getYear(DateTime(2003));
    expect(date, isNotNull);
  });
}
