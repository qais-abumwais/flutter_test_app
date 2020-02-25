import 'package:url_launcher/url_launcher.dart';

class AppUtil {
  static launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static launchEmail(String url) async {
    if (await canLaunch("mailto:$url")) {
      await launch("mailto:$url");
    } else {
      throw 'Could not launch $url';
    }
  }
}
