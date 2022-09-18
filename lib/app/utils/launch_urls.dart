import 'package:url_launcher/url_launcher.dart';

void launchURL(String url) async => await launchUrl(
      Uri.parse('https://$url'),
      webOnlyWindowName: '_blank',
    );
