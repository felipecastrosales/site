import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:site/app/core/shared/app_urls.dart';
import 'package:site/app/utils/utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  test('LaunchUrls launch Url', () {
    var url = LaunchUrls.launchURL(AppUrls.gitHub);
    expect(
      () => url,
      isNotNull,
    );
  });
}
