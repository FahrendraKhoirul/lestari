import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailKerjasamaController extends GetxController {
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  launchPDF(int id, String filename) async {
    final Uri url =
        Uri.parse('https://lestari.ntbprov.go.id/storage/$id/$filename');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}
