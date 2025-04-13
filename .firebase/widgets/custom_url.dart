import 'package:url_launcher/url_launcher.dart';

class CustomUrl {
  // Define the static openUrl method
  static Future<void> openUrl(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }
}
