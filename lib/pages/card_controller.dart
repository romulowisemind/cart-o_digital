import 'package:url_launcher/url_launcher.dart';

class CardController{
  linkedin() async {
    const url =
        'https://www.linkedin.com';// or add your URL here
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}