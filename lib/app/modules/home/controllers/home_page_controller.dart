import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageController extends GetxController {
  launchURL() async {
    final Uri url = Uri.parse('https://t.me/joinchat/OM7GigspC-1mNjU9');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}
