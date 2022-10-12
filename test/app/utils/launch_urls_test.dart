import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/utils/utils.dart';

void main() {
  testWidgets('LaunchUrls launch Url', (tester) async {
    var url = LaunchUrls.launchURL('https://github.com/felipecastrosales');
    expect(() => url, isNotNull);
  });
}
