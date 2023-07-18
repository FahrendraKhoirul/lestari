import 'dart:convert';

import 'package:get/get.dart';
import 'package:lestari/app/modules/panduan/panduan_model.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class PanduanController extends GetxController {
  final searchText = ''.obs;
  final panduans = <Panduan>[].obs;
  final panduansBySearch = <Panduan>[].obs;
  final isLoading = false.obs;

  final count = 0.obs;
  @override
  Future<void> onInit() async {
    super.onInit();
    await fetchData();
    panduansBySearch.value.addAll(panduans);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchData() async {
    try {
      isLoading.value = true;
      final response = await http
          .get(Uri.parse('https://lestari.ntbprov.go.id/api/publications'));
      if (response.statusCode == 200) {
        final List<dynamic> responseBody = jsonDecode(response.body);
        panduans.value = responseBody
            .map((json) => Panduan.fromJson(json as Map<String, dynamic>))
            .toList();
        // ignore: invalid_use_of_protected_member
        panduansBySearch.value.addAll(panduans);
        // }
      }
    } finally {
      isLoading.value = false;
    }
  }

  void sortBySearch() {
    panduansBySearch.value = panduans.where((panduan) {
      final lower = panduan.title?.toLowerCase();
      return lower?.contains(searchText.value.toLowerCase()) ?? false;
    }).toList();
  }
}
