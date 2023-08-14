import 'package:url_launcher/url_launcher.dart';

class LaunchUrls {
  void launchURL(String url) async => await launchUrl(
        Uri.parse(url),
        webOnlyWindowName: '_blank',
      );
}
