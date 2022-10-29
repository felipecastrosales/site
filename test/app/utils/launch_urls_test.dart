import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/utils/utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  test('LaunchUrls launch Url', () async {
    var url = LaunchUrls.launchURL('https://github.com/felipecastrosales');
    expect(
      () => url,
      isNotNull,
    );
  });
}
