import 'dart:convert';

import 'package:get/get.dart';
import 'package:lestari/app/modules/kerjasama/kerjasama_model.dart';
import 'package:http/http.dart' as http;

class KerjasamaController extends GetxController {
  //TODO: Implement KerjasamaController
  final kerjasama = <Kerjasama>[].obs;
  final isLoading = false.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    fetchData();
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
          .get(Uri.parse('https://lestari.ntbprov.go.id/api/cooperation'));
      if (response.statusCode == 200) {
        final List<dynamic> responseBody = jsonDecode(response.body);
        kerjasama.value = responseBody
            .map((json) => Kerjasama.fromJson(json as Map<String, dynamic>))
            .toList();
      }
    } catch (e) {
      print('Error while fetching kerjasama: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
