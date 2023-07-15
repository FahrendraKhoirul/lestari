import 'dart:convert';

import 'package:get/get.dart';
import 'package:lestari/app/modules/sarpras/sarpras_model.dart';
import 'package:http/http.dart' as http;

class SarprasController extends GetxController {
  final sarpras = Sarpras().obs;
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

  Future<void> fetchData() async {
    try {
      isLoading.value = true;
      final response =
          await http.get(Uri.parse('https://lestari.ntbprov.go.id/api/sarpas'));
      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        sarpras.value = Sarpras.fromJson(responseBody);
      }
    } catch (e) {
      print('Error while fetching data sarpras: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
