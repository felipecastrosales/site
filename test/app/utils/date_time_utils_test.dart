import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/utils/utils.dart';

void main() {
  test('DateTimeUtils get year', () async {
    var date = DateTimeUtils.getYear(DateTime(2003));
    expect(date, isNotNull);
  });
}
